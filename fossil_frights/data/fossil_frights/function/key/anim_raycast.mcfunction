execute positioned ~ ~-0.5 ~ if entity @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] run scoreboard players set @s ff_lock_look 1
execute positioned ~ ~-0.5 ~ if entity @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] as @e[type=minecraft:item_display,tag=ff_lock,distance=..0.35,sort=nearest,limit=1] at @s run function fossil_frights:key/spawn_anim
scoreboard players remove @s ff_scan 1
execute unless score @s ff_lock_look matches 1 if score @s ff_scan matches 1.. positioned ^ ^ ^0.5 run function fossil_frights:key/anim_raycast
