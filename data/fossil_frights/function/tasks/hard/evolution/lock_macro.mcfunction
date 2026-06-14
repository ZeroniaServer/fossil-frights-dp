execute at @s run function fossil_frights:tasks/hard/evolution/correct_fx
$kill @e[type=minecraft:ocelot,tag=$(tag)]
$tp @s $(x) $(y) $(z) 180 0
tag @s add ff_evolution_locked
effect clear @s minecraft:regeneration
data merge entity @s {Invulnerable:1b}
