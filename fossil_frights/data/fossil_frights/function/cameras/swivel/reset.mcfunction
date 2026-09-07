execute as @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=11}] at @s run tp @s 15 108 49 180 10
execute as @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=8}] at @s run tp @s 26 98.5 46 20.236602783203125 19.046382904052734
execute as @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=9}] at @s run tp @s -3 107 67 30.02850341796875 35.63517761230469
scoreboard players set @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=11}] ff_camera_swivel 0
scoreboard players set @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=8}] ff_camera_swivel 0
scoreboard players set @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=9}] ff_camera_swivel 0
scoreboard players set @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=11}] ff_camera_swivel 0
scoreboard players set @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=8}] ff_camera_swivel 0
scoreboard players set @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=9}] ff_camera_swivel 0
data modify entity @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=11},limit=1] Rotation set value [0.0f,0.0f]
data modify entity @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=8},limit=1] Rotation set value [0.0f,0.0f]
data modify entity @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=9},limit=1] Rotation set value [0.0f,0.0f]
