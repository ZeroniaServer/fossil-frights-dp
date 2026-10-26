kill @e[type=minecraft:item_display,tag=ff_rock]
kill @e[type=minecraft:interaction,tag=ff_rock]
kill @e[type=minecraft:armor_stand,tag=ff_rock]
execute as @e[type=minecraft:shulker,tag=ff_rock] run function fossil_frights:util/entity/kill_discretely

execute positioned 55.5 80.0 52.5 rotated 135 0 run function fossil_frights:items/rock/summon_decorative
setblock 55 80 52 minecraft:zombie_head[rotation=14] strict

schedule function fossil_frights:items/rock/tick 1t
