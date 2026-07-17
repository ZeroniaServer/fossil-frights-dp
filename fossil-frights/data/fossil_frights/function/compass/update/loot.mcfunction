data remove storage fossil_frights:compass target
execute at @s as @e[type=minecraft:armor_stand,tag=ff_loot_compass_target,sort=nearest,limit=1] run function fossil_frights:compass/update/set_loot_from_marker
execute if data storage fossil_frights:compass target run function fossil_frights:compass/update/set_loot with storage fossil_frights:compass target
execute unless data storage fossil_frights:compass target run function fossil_frights:compass/update/set_loot {x:20,y:71,z:28}
