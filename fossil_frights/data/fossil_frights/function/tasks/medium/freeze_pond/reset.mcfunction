function fossil_frights:tasks/medium/freeze_pond/cleanup
scoreboard players set $freeze_pond_sel ff_task_state 0
scoreboard players set $freeze_pond_done ff_task_state 0
execute as @e[type=minecraft:item_display,tag=ff_penguin_up] run data modify entity @s view_range set value 2
execute as @e[type=minecraft:item_display,tag=ff_penguin_down] run data modify entity @s view_range set value 0
tp @e[type=minecraft:item_display,tag=ff_penguin_down] 51.25 85.0 78.25
setblock 52 84 78 minecraft:ice
setblock 52 84 79 minecraft:ice
setblock 52 84 80 minecraft:ice
setblock 52 84 81 minecraft:ice
setblock 53 84 78 minecraft:ice
setblock 53 84 79 minecraft:ice
setblock 53 84 80 minecraft:ice
setblock 53 84 81 minecraft:ice
setblock 54 84 78 minecraft:ice
setblock 54 84 79 minecraft:ice
setblock 54 84 80 minecraft:ice
setblock 54 84 81 minecraft:ice
setblock 55 84 78 minecraft:ice
setblock 55 84 79 minecraft:ice
setblock 55 84 80 minecraft:ice
setblock 55 84 81 minecraft:ice
setblock 56 84 79 minecraft:ice
setblock 56 84 80 minecraft:ice
setblock 51 84 79 minecraft:ice
setblock 51 84 80 minecraft:ice
setblock 53 84 77 minecraft:ice
