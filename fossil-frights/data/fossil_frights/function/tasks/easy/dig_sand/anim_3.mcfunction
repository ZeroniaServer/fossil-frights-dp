execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 1 run return 0
particle minecraft:block{block_state:{Name:"minecraft:sand"}} 35.5 76.2 74.5 0.75 0.2 0.75 0.12 52 force
particle minecraft:poof 35.5 76.3 74.5 0.35 0.08 0.35 0.02 8 force
playsound minecraft:block.sand.break master @a[team=ff_guard,distance=..14] 35.5 76.2 74.5 0.9 0.75
setblock 35 76 74 minecraft:air
schedule function fossil_frights:tasks/easy/dig_sand/finish 5t replace
