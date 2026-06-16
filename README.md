# Fossil Frights Datapack

## Player Commands

| Action | Command |
| --- | --- |
| Start / queue | `/trigger ff_cmd_start` |
| Leave game / spectator mode | `/trigger ff_cmd_leave` |
| Spectate active player | `/trigger ff_cmd_spectate` |
| Show personal stats | `/trigger ff_cmd_stats` |
| Tutorial | `/trigger ff_cmd_tutorial` |
| Info dialog | `/trigger ff_cmd_info` |
| Enable Fossil Heists | `/trigger ff_cmd_heists` |
| Join guard team | `/trigger ff_cmd_join_guard` |
| Join thief team | `/trigger ff_cmd_join_thief` |
| Return to spawn | `/trigger ff_cmd_spawn` |
| Invite dialog | `/trigger ff_cmd_invite` |

Fossil Frights plugin adds aliases: `/start`, `/join`, `/join guard`, `/join thief`, `/leave`, `/spectate`, `/stats`, `/invite`, `/tutorial`, `/info`, `/heists`, `/spawn`.

## Admin Commands

| Action | Command |
| --- | --- |
| Admin menu | `/function fossil_frights:command/admin/show` |
| Clear plushie trophies | `/function fossil_frights:tasks/final/plushies/clear` |
| Reset parkour display | `/function fossil_frights:parkour/reset` |
| Reset temple run display | `/function fossil_frights:temple_run/reset` |
| Reset ant fight display | `/function fossil_frights:ant_fight/reset` |

Fossil Frights plugin adds admin menu alias: `/admin`.

## Leaderboard

### Datapack Only

The datapack stores leaderboard entries in `storage fossil_frights:leaderboards entries`.

| Process | Behavior |
| --- | --- |
| 1. Player stat changes | Scoreboards update (`ff_top_time`, `ff_top_day`, `ff_run_count`, `ff_duo_best`) |
| 2. Sync entry | `fossil_frights:leaderboards/sync_entry` copies the player into storage |
| 3. Board render | Display functions sort storage entries and render text displays at the `leader_board` armor stand |

Datapack-only admin commands:

| Action | Command |
| --- | --- |
| Reset full Fossil Frights leaderboard | `/function fossil_frights:admin/reset_leaderboard` |
| Reset one player by exact name | `/function fossil_frights:admin/reset_player_stats_macro {name:"PlayerName"}` |
| Manual online stat edit | `/scoreboard players set <player> <objective> <value>` |

Tracked stat objectives:

| Objective | Meaning |
| --- | --- |
| `ff_top_time` | Best solo victory time, in ticks |
| `ff_top_day` | Highest solo day reached |
| `ff_run_count` | Solo run count |
| `ff_duo_best` | Best multiplayer victory time, in ticks |
| `ff_parkour_best` | Parkour best |
| `ff_temple_run_best` | Temple run best |
| `ff_ant_score` | Current ant fight score |
| `ff_ant_top_score` | Best ant fight score |

### Plugin Present

The datapack always manages stats/leaderboard, but when the plugin present it helps with storage via `leaderboard.yml` file.

| Process | Behavior |
| --- | --- |
| 1. Player stat changes | Datapack updates scoreboards |
| 2. Plugin sync | Datapack calls the plugin sync hook instead of writing leaderboard storage |
| 3. File storage | Plugin writes `plugins/FossilFrights/leaderboard.yml` |
| 4. Board render | Plugin rebuilds datapack display storage from `leaderboard.yml` |

`leaderboard.yml` is the source of truth while the plugin is present.

Plugin admin commands:

| Action | Command |
| --- | --- |
| Reload edited YAML into game | `/admin leaderboard reload` |
| Reset file-backed leaderboard | `/admin leaderboard reset` |
| Remove player from Fossil Frights leaderboard | `/admin leaderboard remove <player>` |


Edit `leaderboard.yml`, then run `/admin leaderboard reload`; values apply immediately

> Avoid datapack leaderboard reset/stat edit commands while the plugin is present. 

## Game Flow

| Event | Main behavior |
| --- | --- |
| Start | Sets active players, clears inventory, resets tasks/hazards/timer, starts at day `0` break |
| Next day | Advances day, starts day timer, rolls tasks/hazards |
| Day complete | Clears tasks, awards CubeKoin, updates day progress, starts break |
| Day timeout | Marks defeat and runs defeat animation |
| Victory | Day `10` complete freezes timer, updates top day/time or duo time, runs victory celebration |
| Leave / End | Updates solo day if applicable, resets game state, returns players to lobby |
| Active disconnect | Ends the run and resets game state; datapack-only may apply pending day stats on next login |
