# 📜 nixB OER Laboratory Decisions

## 2026-05-14: New Safety Protocol
- **Decision:** Before executing potentially risky or long-running scripts (especially those involving watch loops like 'entr' or complex Nix builds), always save the current chat context/milestones to MemPalace.
- **Rationale:** Prevents context loss in case of a crash or OOM event.

## 2026-05-14: OER Preview Recursion Fix
- **Decision:** Refactored `preview.sh` to remove the recursive `entr` call.
- **Rationale:** The previous script called itself via `entr`, leading to an infinite process loop/crash.

- [2026-05-21 09:41] [2026-05-21] Unit 4 Integration: Aligned nixB OER Unit 4 with Academic Track Course Map. Introduced 'Sovereignty and Sustainability' and 'The Verification Loop' (Pytest) sections. Successfully integrated 'tts-ou' generated audio overview into OU-XML. Resolved OER toolchain dependency conflict (setuptools/pkg_resources).
