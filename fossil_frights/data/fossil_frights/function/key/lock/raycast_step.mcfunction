execute if entity @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_lock_look 1
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] run data modify entity @s item.components."minecraft:item_model" set value "fossil-frights:display/general/lock_hovered"
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] run tag @s add ff_lock_hovered
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] at @s positioned ~ ~-0.25 ~ unless entity @e[type=minecraft:interaction,tag=ff_lock_click,distance=..0.1,limit=1] run summon minecraft:interaction ~ ~ ~ {width:0.5,height:0.5,response:true,Tags:["ff_lock_click"]}
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] at @s positioned ~ ~-0.25 ~ run scoreboard players set @e[type=minecraft:interaction,tag=ff_lock_click,distance=..0.1,limit=1] ff_lock_click_ttl 5
scoreboard players remove @s ff_scan 1
execute if score @s ff_lock_look matches 0 if score @s ff_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:key/lock/raycast_step
