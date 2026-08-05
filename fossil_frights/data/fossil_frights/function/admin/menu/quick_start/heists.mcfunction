execute if score $game_running ff_game_state matches 1 run return run function fossil_frights:admin/menu/progress
function fossil_frights:command/start/heists
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
scoreboard players set @a ff_join_cooldown 0
tag @a[gamemode=!spectator] add ff_quick_start_heists_assigning
team join ff_lobby @a[tag=ff_quick_start_heists_assigning,team=ff_guard]
execute as @a[tag=ff_quick_start_heists_assigning] run function fossil_frights:join/heists/random
tag @a remove ff_quick_start_heists_assigning
