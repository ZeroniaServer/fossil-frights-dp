data remove storage fossil_frights:compass target
execute at @s as @e[type=minecraft:marker,tag=ff_task_compass_target,sort=nearest,limit=1] run function fossil_frights:compass/update/set_task_from_marker
execute if data storage fossil_frights:compass target run function fossil_frights:compass/update/set_task with storage fossil_frights:compass target
execute unless data storage fossil_frights:compass target run function fossil_frights:compass/update/set_task {x:20,y:71,z:28}
