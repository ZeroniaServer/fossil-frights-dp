execute if entity @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s run function fossil_frights:key/spawn_anim
scoreboard players remove @s ff_scan 1
execute if score @s ff_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:key/anim_raycast
