execute if predicate fossil_frights:game_state/game_running run return run function fossil_frights:admin/menu/progress
function fossil_frights:command/start/heists
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
scoreboard players set @a ff_join_cooldown 0
tag @a[gamemode=!spectator] add ff_quick_start_heists_assigning
team join ff_lobby @a[tag=ff_quick_start_heists_assigning,team=ff_guard]
execute as @a[tag=ff_quick_start_heists_assigning] run function fossil_frights:join/heists/random
tag @a remove ff_quick_start_heists_assigning
