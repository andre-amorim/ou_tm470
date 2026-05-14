# 📜 nixB OER Laboratory Decisions

## 2026-05-14: New Safety Protocol
- **Decision:** Before executing potentially risky or long-running scripts (especially those involving watch loops like 'entr' or complex Nix builds), always save the current chat context/milestones to MemPalace.
- **Rationale:** Prevents context loss in case of a crash or OOM event.

## 2026-05-14: OER Preview Recursion Fix
- **Decision:** Refactored `preview.sh` to remove the recursive `entr` call.
- **Rationale:** The previous script called itself via `entr`, leading to an infinite process loop/crash.
