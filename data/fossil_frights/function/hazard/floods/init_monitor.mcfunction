scoreboard players set #floods_turns ff_hazard_rng 0
scoreboard players set #floods_rotation_prev ff_hazard_rng 0
execute store result score #floods_turn_target ff_hazard_rng run random value 4..8
execute store result score #floods_rotation_prev ff_hazard_rng run data get entity @e[type=minecraft:item_frame,x=-11,y=71,z=22,distance=..1,limit=1] ItemRotation 1
