<script setup>
import { ref, onMounted, onUnmounted, computed } from 'vue'

const ROLE_COLORS = {
  'Scrum Master': '#ffcc00',
  'Developer': '#00ccff',
  'Researcher': '#ccff00',
  'Tester': '#ff00cc',
  'Stakeholder': '#ffffff'
};

const ROLE_POSITIONS = {
  'Scrum Master': { x: 400, y: 150 },
  'Developer': [
    { x: 200, y: 350 },
    { x: 350, y: 350 },
    { x: 500, y: 350 },
    { x: 650, y: 350 }
  ],
  'Researcher': { x: 100, y: 150 },
  'Tester': { x: 700, y: 150 }
};

const mode = ref('live'); // 'live' or 'playback'
const agents = ref([]);
const devCount = ref(0);

// Playback state
const timeline = ref([]);
const currentFrame = ref(0);
const isPlaying = ref(false);
let playbackInterval;

let liveInterval;

const fetchLiveState = async () => {
  if (mode.value !== 'live') return;
  try {
    const response = await fetch('/current_state.json');
    const data = await response.json();
    agents.value = data.agents || [];
  } catch (error) {
    console.error("Error fetching live state:", error);
  }
};

const fetchTimeline = async () => {
  try {
    const response = await fetch('/playback_timeline.json');
    const data = await response.json();
    timeline.value = data || [];
    if (timeline.value.length > 0) {
      agents.value = timeline.value[0].agents || [];
    }
  } catch (error) {
    console.error("Error fetching timeline:", error);
  }
};

onMounted(() => {
  fetchLiveState();
  liveInterval = setInterval(fetchLiveState, 2000);
});

onUnmounted(() => {
  clearInterval(liveInterval);
  clearInterval(playbackInterval);
});

const toggleMode = async () => {
  mode.value = mode.value === 'live' ? 'playback' : 'live';
  if (mode.value === 'playback') {
    clearInterval(liveInterval);
    await fetchTimeline();
  } else {
    clearInterval(playbackInterval);
    isPlaying.value = false;
    currentFrame.value = 0;
    fetchLiveState();
    liveInterval = setInterval(fetchLiveState, 2000);
  }
};

const togglePlayback = () => {
  isPlaying.value = !isPlaying.value;
  if (isPlaying.value) {
    if (currentFrame.value >= timeline.value.length - 1) {
      currentFrame.value = 0;
    }
    playbackInterval = setInterval(() => {
      if (currentFrame.value < timeline.value.length - 1) {
        currentFrame.value++;
        updateAgentsFromTimeline();
      } else {
        clearInterval(playbackInterval);
        isPlaying.value = false;
      }
    }, 1000); // 1 frame per second
  } else {
    clearInterval(playbackInterval);
  }
};

const onSliderChange = (e) => {
  currentFrame.value = parseInt(e.target.value);
  updateAgentsFromTimeline();
};

const updateAgentsFromTimeline = () => {
  if (timeline.value[currentFrame.value]) {
    agents.value = timeline.value[currentFrame.value].agents || [];
  }
};

const currentDate = computed(() => {
  if (mode.value === 'playback' && timeline.value.length > 0) {
    const dt = timeline.value[currentFrame.value].datetime;
    return new Date(dt).toLocaleString();
  }
  return new Date().toLocaleString();
});

const getPosition = (agent) => {
  const basePos = ROLE_POSITIONS[agent.role];
  if (agent.role === 'Developer') {
    const idLen = agent.id ? agent.id.length : 0;
    const pos = basePos ? { ...basePos[idLen % 4] } : { x: 300, y: 200 };
    // Add small random offset to avoid exact overlap
    pos.x += (Math.random() - 0.5) * 40;
    pos.y += (Math.random() - 0.5) * 40;
    return pos;
  }
  
  if (basePos) {
    // Also stagger non-developers slightly
    const staggeredX = basePos.x + (Math.random() - 0.5) * 80;
    const staggeredY = basePos.y + (Math.random() - 0.5) * 80;
    return { x: staggeredX, y: staggeredY };
  }
  
  return { x: Math.random() * 600, y: Math.random() * 400 };
};
</script>

<template>
  <div class="scrum-office">
    <div class="office-background">
       <h1 style="position: absolute; top: 10px; left: 10px; font-size: 12px; margin: 0; z-index: 10;">TM470 Project Log: Scrum Pixel</h1>
       <div style="position: absolute; top: 30px; left: 10px; font-size: 10px; z-index: 10;">
         Mode: {{ mode.toUpperCase() }} | {{ currentDate }}
       </div>
       <button @click="toggleMode" style="position: absolute; top: 10px; right: 10px; z-index: 10; cursor: pointer; padding: 5px; background: #444; color: #fff; border: 1px solid #777;">
         Switch to {{ mode === 'live' ? 'Playback' : 'Live' }}
       </button>
    </div>
    
    <div 
      v-for="agent in agents" 
      :key="agent.id" 
      :class="['agent-character', 'status-' + (agent.status ? agent.status.toLowerCase().replace(' ', '-').replace('_', '-') : 'unknown')]"
      :style="{ left: getPosition(agent).x + 'px', top: getPosition(agent).y + 'px', border: '1px solid ' + ROLE_COLORS[agent.role] }"
    >
      <div class="character-sprite" :style="{ backgroundColor: ROLE_COLORS[agent.role] }"></div>
      <div class="character-label">{{ agent.id }}</div>
      <div class="character-status">{{ agent.status }}</div>
    </div>

    <div v-if="mode === 'playback'" class="playback-controls" style="position: absolute; bottom: 40px; left: 10px; right: 10px; background: rgba(0,0,0,0.8); padding: 10px; display: flex; align-items: center; gap: 10px; z-index: 10;">
       <button @click="togglePlayback" style="cursor: pointer; padding: 5px; background: #666; color: #fff; border: none;">{{ isPlaying ? 'Pause' : 'Play' }}</button>
       <input type="range" min="0" :max="timeline.length > 0 ? timeline.length - 1 : 0" :value="currentFrame" @input="onSliderChange" style="flex: 1; cursor: pointer;" />
       <span style="font-size: 10px; width: 80px; text-align: right;">Frame {{ currentFrame + 1 }} / {{ timeline.length }}</span>
    </div>

    <div class="legend" style="position: absolute; bottom: 10px; left: 10px; font-size: 8px; background: rgba(0,0,0,0.5); padding: 5px; z-index: 10;">
      <div v-for="(color, role) in ROLE_COLORS" :key="role" style="display: flex; align-items: center; gap: 5px;">
        <div :style="{ width: '8px', height: '8px', backgroundColor: color }"></div>
        <span>{{ role }}</span>
      </div>
    </div>
  </div>
</template>
