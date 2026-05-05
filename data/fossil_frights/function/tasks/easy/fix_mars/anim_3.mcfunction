setblock -22 101 72 minecraft:air
setblock -22 104 71 minecraft:red_sand
particle minecraft:block{block_state:{Name:"minecraft:red_sand"}} -22.5 101.5 72.5 0.2 0.2 0.2 0.03 12 force
particle minecraft:block{block_state:{Name:"minecraft:red_sand"}} -22.5 104.5 71.5 0.2 0.2 0.2 0.03 12 force
particle minecraft:poof -22.5 103.0 71.5 0.3 1.2 0.4 0.01 4 force
playsound minecraft:block.sand.place master @a[tag=ff_active,distance=..18] -22 103 72 0.85 1.2
