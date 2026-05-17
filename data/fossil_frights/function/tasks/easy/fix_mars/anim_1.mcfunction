setblock -26 101 69 minecraft:air
setblock -24 104 69 minecraft:red_sand
particle minecraft:block{block_state:{Name:"minecraft:red_sand"}} -26.5 101.5 69.5 0.2 0.2 0.2 0.03 12 force
particle minecraft:block{block_state:{Name:"minecraft:red_sand"}} -24.5 104.5 69.5 0.2 0.2 0.2 0.03 12 force
particle minecraft:poof -25.5 103.0 69.5 0.5 1.2 0.2 0.01 4 force
playsound minecraft:block.sand.place master @a[tag=ff_active,distance=..18] -25 103 69 0.8 1.1
schedule function fossil_frights:tasks/easy/fix_mars/anim_2 3t replace
