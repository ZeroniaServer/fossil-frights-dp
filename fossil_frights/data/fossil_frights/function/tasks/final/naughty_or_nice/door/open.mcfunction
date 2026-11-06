execute if block -3 71 18 minecraft:birch_button run setblock -3 71 18 minecraft:air
execute if block 0 71 18 minecraft:birch_button run setblock 0 71 18 minecraft:air
execute if block -2 71 20 minecraft:birch_button run setblock -2 71 20 minecraft:air
execute if block -1 71 20 minecraft:birch_button run setblock -1 71 20 minecraft:air
place template fossil_frights:final_door/open -4 69 18 none none 1 0 strict
setblock -3 71 18 minecraft:birch_button[face=wall,facing=east,powered=false]
setblock 0 71 18 minecraft:birch_button[face=wall,facing=west,powered=false]
