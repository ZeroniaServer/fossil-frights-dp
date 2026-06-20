setblock -16 80 72 minecraft:water_cauldron[level=3] strict
setblock -9 70 53 minecraft:water_cauldron[level=2] strict
setblock -10 70 53 minecraft:water_cauldron[level=3] strict
setblock 21 80 11 minecraft:water_cauldron[level=2] strict
setblock 21 80 9 minecraft:water_cauldron[level=3] strict
setblock 26 80 9 minecraft:water_cauldron[level=3] strict
setblock -23 94 17 minecraft:water_cauldron[level=3] strict
setblock -23 94 14 minecraft:water_cauldron[level=3] strict
setblock -25 94 14 minecraft:water_cauldron[level=3] strict
setblock -25 94 17 minecraft:water_cauldron[level=3] strict
setblock -8 70 46 minecraft:water_cauldron[level=1] strict
execute as @e[type=minecraft:item_display,tag=museum_map] run data merge entity @s {Glowing:0b}
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $victory_complete ff_game_state matches 1 run return 0
execute unless entity @e[type=minecraft:interaction,tag=ff_museum_map_click,limit=1] run return 0
execute positioned 2.5 80.5 17.5 unless entity @a[limit=1,tag=ff_active,tag=!ff_map_claimed,scores={ff_run_count=10..,ff_top_day=..9},distance=..10] run return 0
scoreboard players add $museum_map_flash ff_game_state 1
execute if score $museum_map_flash ff_game_state matches 20.. run scoreboard players set $museum_map_flash ff_game_state 0
execute if score $museum_map_flash ff_game_state matches ..9 as @e[type=minecraft:item_display,tag=museum_map] run data merge entity @s {Glowing:1b}
