execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 1 run return 0
particle minecraft:block{block_state:{Name:"minecraft:sand"}} 34.5 77.2 74.5 0.55 0.18 0.55 0.10 36 force
particle minecraft:dust{color:[0.82,0.70,0.46],scale:0.8} 34.5 77.25 74.5 0.45 0.12 0.45 0.02 18 force
playsound minecraft:block.sand.break master @a[tag=ff_frights_feedback_viewer,distance=..14] 34.5 77.2 74.5 0.8 0.85
schedule function fossil_frights:tasks/easy/dig_sand/anim_2 4t replace
