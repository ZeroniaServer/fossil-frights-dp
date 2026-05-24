tag @e[type=minecraft:armor_stand,tag=ff_tutorial_camera] remove ff_tutorial_camera_current
execute store result score $tutorial_uuid_0 ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score $tutorial_uuid_1 ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score $tutorial_uuid_2 ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score $tutorial_uuid_3 ff_active_uuid_3 run data get entity @s UUID[3] 1
execute as @e[type=minecraft:armor_stand,tag=ff_tutorial_camera] if score @s ff_active_uuid_0 = $tutorial_uuid_0 ff_active_uuid_0 if score @s ff_active_uuid_1 = $tutorial_uuid_1 ff_active_uuid_1 if score @s ff_active_uuid_2 = $tutorial_uuid_2 ff_active_uuid_2 if score @s ff_active_uuid_3 = $tutorial_uuid_3 ff_active_uuid_3 run tag @s add ff_tutorial_camera_current
execute unless entity @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] run function fossil_frights:tutorial/camera/summon
spectate @e[type=minecraft:armor_stand,tag=ff_tutorial_camera_current,limit=1] @s
