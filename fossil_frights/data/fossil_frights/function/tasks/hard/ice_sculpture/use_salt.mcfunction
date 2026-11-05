execute unless score $ice_sculpture_sel ff_task_state matches 1 run return 0
execute unless score $ice_sculpture_done ff_task_state matches 0 run return 0
execute at @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver,limit=1] run particle minecraft:poof ~ ~0.7 ~ 0.5 0.5 0.5 0.04 24 force
execute at @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver,limit=1] run particle minecraft:snowflake ~ ~0.7 ~ 0.55 0.55 0.55 0.03 40 force
kill @s[type=minecraft:item]
execute as @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
tp @e[type=minecraft:sulfur_cube,tag=ff_ice_sculpture_driver] 68.5 82.0 46.5
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 68.5 82.0 46.5
scoreboard players set $ice_sculpture_moved ff_task_state 0
execute positioned 68.5 82.7 46.5 run particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.04 24 force
execute positioned 68.5 82.7 46.5 run particle minecraft:snowflake ~ ~ ~ 0.55 0.55 0.55 0.03 40 force
