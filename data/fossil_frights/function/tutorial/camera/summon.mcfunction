tag @e[type=minecraft:armor_stand,tag=ff_tutorial_camera] remove ff_tutorial_camera_current
execute store result score $tutorial_uuid_0 ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score $tutorial_uuid_1 ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score $tutorial_uuid_2 ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score $tutorial_uuid_3 ff_active_uuid_3 run data get entity @s UUID[3] 1
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["ff_tutorial_camera","ff_tutorial_camera_current","ff_tutorial_camera_new"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,teleport_duration:2}
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_0 = $tutorial_uuid_0 ff_active_uuid_0
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_1 = $tutorial_uuid_1 ff_active_uuid_1
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_2 = $tutorial_uuid_2 ff_active_uuid_2
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_3 = $tutorial_uuid_3 ff_active_uuid_3
tag @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_new,limit=1,sort=nearest] remove ff_tutorial_camera_new
