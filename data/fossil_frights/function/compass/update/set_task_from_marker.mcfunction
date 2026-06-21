execute store result storage fossil_frights:compass target.x int 1 run data get entity @s Pos[0]
execute store result storage fossil_frights:compass target.y int 1 run data get entity @s Pos[1]
execute store result storage fossil_frights:compass target.z int 1 run data get entity @s Pos[2]
data modify storage fossil_frights:compass target.label set value "Nearest"
data modify storage fossil_frights:compass target.color set value "yellow"
data modify storage fossil_frights:compass target.model set value "task_start"
function fossil_frights:compass/cycle/classify_nearest_task
