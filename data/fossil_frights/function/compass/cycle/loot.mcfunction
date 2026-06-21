data remove storage fossil_frights:compass target
scoreboard players set @s ff_compass_scan 0
scoreboard players set @s ff_compass_found 0
function fossil_frights:compass/cycle/generated/loot_list
execute if score @s ff_compass_found matches 1 run function fossil_frights:compass/update/set_loot with storage fossil_frights:compass target
execute if score @s ff_compass_found matches 1 run return 1
scoreboard players set @s ff_compass_mode 0
function fossil_frights:compass/update/loot
