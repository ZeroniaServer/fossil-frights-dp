execute as @e[type=minecraft:item_frame,tag=ff_lock_glow] run data merge entity @s {Glowing:0b}
tag @e[type=minecraft:item_frame,tag=ff_lock_glow] remove ff_lock_glow
execute as @a at @s run function fossil_frights:player_tick
