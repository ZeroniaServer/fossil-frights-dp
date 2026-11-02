particle minecraft:block{block_state:"minecraft:snow"} -1.5 80.5 11.5 0.2 0.2 0.2 0.03 12 force
setblock -2 80 11 minecraft:air
schedule function fossil_frights:tasks/easy/sweep_snow/remove_3 5t replace
