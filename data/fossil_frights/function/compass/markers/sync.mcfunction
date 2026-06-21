function fossil_frights:compass/markers/sync_tasks
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 run function fossil_frights:compass/markers/sync_loot
execute unless score $heist_mode_active ff_game_state matches 1 run kill @e[type=minecraft:marker,tag=ff_loot_compass_target]
