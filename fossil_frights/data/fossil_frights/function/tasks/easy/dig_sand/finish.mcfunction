execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 1 run return 0
particle minecraft:block{block_state:{Name:"minecraft:sand"}} 35.0 76.8 74.5 1.1 0.25 0.8 0.08 60 force
playsound minecraft:block.sand.place master @a[tag=ff_frights_feedback_viewer,distance=..14] 35 76.8 74.5 0.75 1.25
