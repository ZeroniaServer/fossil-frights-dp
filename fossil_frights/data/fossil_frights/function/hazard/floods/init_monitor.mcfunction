scoreboard players set #floods_turns ff_hazard_rng 0
scoreboard players set #floods_turn_on ff_hazard_rng 0
scoreboard players set #floods_valve_rotation ff_hazard_rng 0
execute store result score #floods_turn_target ff_hazard_rng run random value 3..6
data modify entity @e[type=minecraft:item_display,tag=ff_floods_shutoff_valve,limit=1] transformation.right_rotation set value {axis:[1,0,0],angle:1.5707963}
data modify entity @e[type=minecraft:item_display,tag=ff_floods_shutoff_valve,limit=1] transformation.left_rotation set value {axis:[0,0,1],angle:0}
data merge entity @e[type=minecraft:item_display,tag=ff_floods_shutoff_valve,limit=1] {start_interpolation:0,interpolation_duration:0}
