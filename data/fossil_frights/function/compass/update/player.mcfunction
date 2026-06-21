execute if items entity @s hotbar.8 minecraft:compass[minecraft:custom_data~{ff_task_compass:true}] unless score $heist_mode_active ff_game_state matches 1 run function fossil_frights:compass/update/task
execute if entity @s[tag=ff_heist_guard] if items entity @s hotbar.8 minecraft:compass[minecraft:custom_data~{ff_loot_compass:true}] run function fossil_frights:compass/update/loot
execute if entity @s[tag=ff_heist_thief] if items entity @s hotbar.1 minecraft:compass[minecraft:custom_data~{ff_loot_compass:true}] run function fossil_frights:compass/update/loot
