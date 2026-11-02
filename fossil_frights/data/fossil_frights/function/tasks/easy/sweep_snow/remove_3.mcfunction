particle minecraft:block{block_state:"minecraft:snow"} -0.5 80.5 10.5 0.2 0.2 0.2 0.03 12 force
setblock -1 80 10 minecraft:air
schedule function fossil_frights:tasks/easy/sweep_snow/remove_4 5t replace
