setblock 28 90 29 minecraft:air
particle minecraft:block{block_state:"minecraft:coal_block"} 28.5 90.5 29.5 0.2 0.2 0.2 0.03 12 force
playsound minecraft:block.grass.break master @a[tag=ff_frights_feedback_viewer,distance=..18] 28.5 90.5 29.5 0.8 1.4
schedule function fossil_frights:tasks/easy/chimney_sweep/clean_2 5t replace
