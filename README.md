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
| Invite dialog | `/trigger ff_cmd_invite` |

Fossil Frights plugin adds aliases: `/start`, `/join`, `/leave`, `/spectate`, `/stats`, `/invite`, `/tutorial`, `/info`.

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

`plugins/FossilFrights/leaderboard.yml` is the source of truth.

The datapack still updates scoreboards during gameplay, but immediately calls the plugin sync hook after leaderboard stat changes. The plugin writes the result to `leaderboard.yml`, then rebuilds datapack storage for the in-world board.



Plugin admin commands:

| Action | Command |
| --- | --- |
| Reload edited YAML into game | `/admin leaderboard reload` |
| Reset file-backed leaderboard | `/admin leaderboard reset` |
| Remove player from Fossil Frights leaderboard | `/admin leaderboard remove <player>` |

To edit players online/offline players stats more directly: 

Edit `leaderboard.yml`, then run `/admin leaderboard reload`; values apply immediately

> Avoid datapack leaderboard reset/stat edit commands while the plugin is present. Destructive datapack commands are guarded and will stop with a warning.

## Game Flow

| Event | Main behavior |
| --- | --- |
| Start | Sets active players, clears inventory, resets tasks/hazards/timer, starts at day `0` break |
| Next day | Advances day, starts day timer, rolls tasks/hazards |
| Day complete | Clears tasks, awards CubeKoin, updates day progress, starts break |
| Day timeout | Marks defeat and runs defeat animation |
| Victory | Day `10` complete freezes timer, updates top day/time or duo time, runs victory celebration |
| Leave / End | Updates solo day if applicable, resets game state, returns players to lobby |
| Active disconnect | Stores pending day progress, resets game, lets player reclaim if they rejoin |

## Placement Utilities

| Object | Command |
| --- | --- |
| Leaderboard anchor | `/give @p minecraft:armor_stand[minecraft:item_name='Leaderboard Anchor',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["leader_board"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}]` |
| 3x3 gate | `/give @p minecraft:armor_stand[minecraft:item_name='3x3 Gate',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_gate_3x3"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]` |
| 2x2 gate | `/give @p minecraft:armor_stand[minecraft:item_name='2x2 Gate',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_gate_2x2"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]` |
| 5x6 gate | `/give @p minecraft:armor_stand[minecraft:item_name='5x6 Gate',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_gate_5x6"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]` |
| Garage door | `/give @p minecraft:armor_stand[minecraft:item_name='Garage Door',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["ff_garage_3x3"],NoGravity:1b,Invisible:1b,Invulnerable:1b}]` |
| Anvil station | `/give @p minecraft:armor_stand[minecraft:item_name='Anvil Station',minecraft:entity_data={id:"minecraft:armor_stand",Tags:["anvil"],NoGravity:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b}]` |

Fright markers use armor stands tagged by fright type:

```text
ff_fright_sniffer
ff_fright_bats
ff_fright_creeper
ff_fright_skeleton
ff_fright_bogged
```
