advancement revoke @s only fossil_frights:loot_compass_consumed
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_guard] run scoreboard players add @s ff_compass_mode 1
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_thief] run scoreboard players add @s ff_compass_mode 1
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_guard] run scoreboard players set @s ff_compass 1
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_thief] run scoreboard players set @s ff_compass 1
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_guard] run function fossil_frights:compass/markers/sync_loot
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_thief] run function fossil_frights:compass/markers/sync_loot
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_guard] run function fossil_frights:compass/update/loot
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_thief] run function fossil_frights:compass/update/loot
