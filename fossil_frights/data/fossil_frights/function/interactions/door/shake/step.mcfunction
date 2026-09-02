execute as @e[type=minecraft:item_display,tag=ff_door,scores={ff_door_shake_stage=0}] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:{axis:[0,1,0],angle:0.05}}}
execute as @e[type=minecraft:item_display,tag=ff_door,scores={ff_door_shake_stage=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:{axis:[0,1,0],angle:-0.05}}}
execute as @e[type=minecraft:item_display,tag=ff_door,scores={ff_door_shake_stage=6}] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0,0,0,1]}}
scoreboard players reset @e[type=minecraft:item_display,tag=ff_door,scores={ff_door_shake_stage=6..}] ff_door_shake_stage

scoreboard players add @e[type=minecraft:item_display,tag=ff_door,scores={ff_door_shake_stage=0..}] ff_door_shake_stage 1
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_door,scores={ff_door_shake_stage=0..}] run schedule function fossil_frights:interactions/door/shake/step 1t
