execute store result storage fossil_frights:compass target.x int 1 run data get entity @s Pos[0]
execute store result storage fossil_frights:compass target.y int 1 run data get entity @s Pos[1]
execute store result storage fossil_frights:compass target.z int 1 run data get entity @s Pos[2]
$data modify storage fossil_frights:compass target.label set value "$(label)"
$data modify storage fossil_frights:compass target.color set value "$(color)"
$data modify storage fossil_frights:compass target.model set value "$(model)"
