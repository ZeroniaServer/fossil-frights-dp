execute unless entity @e[type=minecraft:item_frame,x=-11,y=71,z=22,distance=..1,limit=1] run return 0
execute store result score #floods_rotation_now ff_hazard_rng run data get entity @e[type=minecraft:item_frame,x=-11,y=71,z=22,distance=..1,limit=1] ItemRotation 1
execute unless score #floods_rotation_now ff_hazard_rng = #floods_rotation_prev ff_hazard_rng run playsound minecraft:entity.fox.hurt master @a[distance=..18,x=-11,y=71,z=22] -11 71 22 0.8 1.4
execute unless score #floods_rotation_now ff_hazard_rng = #floods_rotation_prev ff_hazard_rng run scoreboard players add #floods_turns ff_hazard_rng 1
execute unless score #floods_rotation_now ff_hazard_rng = #floods_rotation_prev ff_hazard_rng run scoreboard players operation #floods_rotation_prev ff_hazard_rng = #floods_rotation_now ff_hazard_rng
execute if score #floods_turns ff_hazard_rng >= #floods_turn_target ff_hazard_rng run function fossil_frights:hazard/stop/floods
