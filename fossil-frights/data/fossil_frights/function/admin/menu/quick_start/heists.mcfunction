execute if score $game_running ff_game_state matches 1 run return run function fossil_frights:admin/menu/progress
function fossil_frights:command/start
function fossil_frights:command/heists
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
scoreboard players set @a ff_join_cooldown 0
execute as @a[gamemode=!spectator] run function fossil_frights:command/join_random
