# Fossil Frights Datapacks

## Player Commands

| Action | Command |
| --- | --- |
| Start / queue | `/trigger start` |
| Leave game / spectator mode | `/trigger leave` |
| Spectate active player | `/trigger spectate` |
| Show personal stats | `/trigger stats` |
| Tutorial | `/trigger tutorial` |
| Info dialog | `/trigger info` |
| Enable Fossil Heists | `/trigger heists` |
| Set a Heists challenge bounty | `/trigger challenge [set <amount>]` |
| Join guard team | `/trigger join_guard` |
| Join thief team | `/trigger join_thief` |
| Invite dialog | `/trigger invite` |
| Return to spawn | `/trigger spawn` |
| Tp to Ant Fight | `/trigger spawn` |
| Tp to Parkour | `/trigger parkour` |
| Tp to Temple Run | `/trigger templerun` |
| Tp to Sulfur Strikers | `/trigger sulfurstrikers` |

Fossil Frights plugin adds aliases: `/leave`, `/spectate`, `/start`, `/join`, `/antfight`, `/sulfurstriker`, `/templerun`, `/parkour`, `/challenge`, `/stats`, `/invite`, `/tutorial`, `/info`, `/spawn`. 

## Admin Commands

| Action | Command |
| --- | --- |
| Admin menu | `/function fossil_frights:command/admin/show` |
| Admin item boxes | `/function fossil_frights:command/admin/item` |
| Admin heist loot boxes | `/function fossil_frights:command/admin/loot` |
| Reset parkour display | `/function fossil_frights:parkour/reset` |
| Reset temple run display | `/function fossil_frights:temple_run/reset` |
| Reset ant fight display | `/function fossil_frights:ant_fight/reset` |
| Reset sulfur strikers | `/function fossil_frights:sulfur_strikers/reset` |

Fossil Frights plugin adds admin menu alias: `/admin`.

## Leaderboard

### Datapack Only

The datapack stores leaderboard entries in `storage fossil_frights:leaderboards entries`.

| Process | Behavior |
| --- | --- |
| 1. Player stat changes | Scoreboards update (`ff_top_time`, `ff_top_day`, `ff_run_count`, `ff_duo_best`) |
| 2. Sync entry | `fossil_frights:leaderboards/sync_entry` copies the player into storage |
| 3. Board render | Display functions sort storage entries and render text displays |

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
