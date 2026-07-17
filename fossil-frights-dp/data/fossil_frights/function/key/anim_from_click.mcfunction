execute if entity @e[type=minecraft:item_display,tag=ff_lock,distance=..0.75,sort=nearest,limit=1] run scoreboard players set @s ff_lock_look 1
execute if score @s ff_lock_look matches 1 as @e[type=minecraft:item_display,tag=ff_lock,distance=..0.75,sort=nearest,limit=1] at @s run function fossil_frights:key/spawn_anim
