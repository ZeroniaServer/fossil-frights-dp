execute if entity @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run scoreboard players set @s ff_lock_look 1
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run data merge entity @s {Glowing:1b}
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run tag @s add ff_lock_glow
scoreboard players remove @s ff_scan 1
execute if score @s ff_lock_look matches 0 if score @s ff_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:raycast_step
