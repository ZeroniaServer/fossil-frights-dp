tag @e[type=minecraft:text_display,tag=ff_tutorial_camera] remove ff_tutorial_camera_current
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score $tutorial_uuid_0 ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score $tutorial_uuid_1 ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score $tutorial_uuid_2 ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score $tutorial_uuid_3 ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
execute at @s run summon minecraft:text_display ~ ~ ~ {Tags:["ff_tutorial_camera","ff_tutorial_camera_current","ff_tutorial_camera_new"],teleport_duration:0,interpolation_duration:0,billboard:"fixed",text:"",text_opacity:0,background:0,see_through:true}
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_0 = $tutorial_uuid_0 ff_active_uuid_0
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_1 = $tutorial_uuid_1 ff_active_uuid_1
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_2 = $tutorial_uuid_2 ff_active_uuid_2
scoreboard players operation @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] ff_active_uuid_3 = $tutorial_uuid_3 ff_active_uuid_3
tag @e[type=minecraft:text_display,tag=ff_tutorial_camera_new,limit=1,sort=nearest] remove ff_tutorial_camera_new
