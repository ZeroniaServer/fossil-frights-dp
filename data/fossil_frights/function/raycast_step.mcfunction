execute if entity @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run scoreboard players set @s ff_lock_look 1
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run data merge entity @s {Glowing:1b}
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run tag @s add ff_lock_glow
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s positioned ~ ~-0.5 ~ unless entity @e[type=minecraft:interaction,tag=ff_lock_click,distance=..0.1,limit=1] run summon minecraft:interaction ~ ~ ~ {width:0.9f,height:0.9f,response:1b,Tags:["ff_lock_click"]}
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_frame,distance=..0.35,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] at @s positioned ~ ~-0.5 ~ run scoreboard players set @e[type=minecraft:interaction,tag=ff_lock_click,distance=..0.1,limit=1] ff_lock_click_ttl 5
scoreboard players remove @s ff_scan 1
execute if score @s ff_lock_look matches 0 if score @s ff_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:raycast_step
