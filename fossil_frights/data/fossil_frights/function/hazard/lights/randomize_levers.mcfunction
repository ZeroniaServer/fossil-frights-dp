function fossil_frights:hazard/lights/set_levers_down
execute store result score #lights_lever_pick ff_hazard_rng run random value 1..7

execute if score #lights_lever_pick ff_hazard_rng matches 1 run setblock -26 71 22 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 2 run setblock -26 71 21 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 3 run setblock -26 71 20 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 4 run setblock -26 71 22 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 4 run setblock -26 71 21 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 5 run setblock -26 71 22 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 5 run setblock -26 71 20 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 6 run setblock -26 71 21 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 6 run setblock -26 71 20 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 7 run setblock -26 71 22 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 7 run setblock -26 71 21 minecraft:lever[face=wall,facing=east,powered=false]
execute if score #lights_lever_pick ff_hazard_rng matches 7 run setblock -26 71 20 minecraft:lever[face=wall,facing=east,powered=false]
