execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 1 run return 0
particle minecraft:block{block_state:{Name:"minecraft:sand"}} 35.5 76.2 74.5 0.6 0.18 0.6 0.11 42 force
particle minecraft:dust{color:[0.82,0.70,0.46],scale:1.0} 35.5 76.3 74.5 0.5 0.14 0.5 0.02 22 force
playsound minecraft:block.sand.hit master @a[tag=ff_frights_feedback_viewer,distance=..14] 35.5 76.2 74.5 0.8 1.15
setblock 34 77 74 minecraft:air
schedule function fossil_frights:tasks/easy/dig_sand/anim_3 4t replace
