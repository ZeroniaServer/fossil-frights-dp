execute if entity @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run function fossil_frights:lock/set_held_apply
scoreboard players remove @s ff_scan 1
execute if score @s ff_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:lock/set_held_raycast
