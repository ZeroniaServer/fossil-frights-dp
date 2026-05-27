execute if score $game_running ff_game_state matches 1 run tellraw @a [{"text":"⚠ ","color":"red"},{"text":"A game is already running.","color":"red"}]
execute if score $game_running ff_game_state matches 1 run return 0
execute if score $active_set ff_game_state matches 1 run tellraw @a [{"text":"⚠ ","color":"red"},{"text":"A run is already staged. End or reset it before starting Party Mode.","color":"red"}]
execute if score $active_set ff_game_state matches 1 run return 0
execute unless entity @a run tellraw @a [{"text":"⚠ ","color":"red"},{"text":"No players are online to start Party Mode.","color":"red"}]
execute unless entity @a run return 0
function fossil_frights:game/party_mode/reset
scoreboard players set $active_set ff_game_state 1
execute as @a run function fossil_frights:game/party_mode/add_current
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $party_mode_active ff_game_state 1
function fossil_frights:game/start
scoreboard players set $run_multiplayer ff_game_state 1
scoreboard players set $party_mode_active ff_game_state 1
scoreboard players set $run_admin_modified ff_game_state 1
tp @a[tag=ff_active] 20 70 20 0 0
tellraw @a [{"text":"ℹ ","color":"yellow"},{"text":"Party Mode started. This run is for fun only and will not count for solo, duo, stats, or leaderboards.","color":"yellow"}]
