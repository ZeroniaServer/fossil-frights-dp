setblock -21 101 67 minecraft:air
setblock -22 103 69 minecraft:red_sand
particle minecraft:block{block_state:{Name:"minecraft:red_sand"}} -21.5 101.5 67.5 0.2 0.2 0.2 0.03 12 force
particle minecraft:block{block_state:{Name:"minecraft:red_sand"}} -22.5 103.5 69.5 0.2 0.2 0.2 0.03 12 force
particle minecraft:poof -21.75 102.5 68.25 0.35 1.0 0.35 0.01 4 force
playsound minecraft:block.sand.place master @a[team=ff_guard,distance=..18] -22 102 68 0.8 1.15
schedule function fossil_frights:tasks/easy/fix_mars/anim_3 3t replace
