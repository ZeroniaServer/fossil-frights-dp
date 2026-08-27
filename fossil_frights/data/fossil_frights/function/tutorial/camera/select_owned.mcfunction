tag @e[type=minecraft:text_display,tag=ff_tutorial_camera] remove ff_tutorial_camera_current
scoreboard players operation $tutorial_uuid_0 ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation $tutorial_uuid_1 ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation $tutorial_uuid_2 ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation $tutorial_uuid_3 ff_active_uuid_3 = @s ff_active_uuid_3
execute as @e[type=minecraft:text_display,tag=ff_tutorial_camera] if score @s ff_active_uuid_0 = $tutorial_uuid_0 ff_active_uuid_0 if score @s ff_active_uuid_1 = $tutorial_uuid_1 ff_active_uuid_1 if score @s ff_active_uuid_2 = $tutorial_uuid_2 ff_active_uuid_2 if score @s ff_active_uuid_3 = $tutorial_uuid_3 ff_active_uuid_3 run tag @s add ff_tutorial_camera_current
execute unless entity @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run function fossil_frights:tutorial/camera/summon
execute at @s as @a[distance=..0.000001,gamemode=spectator,team=ff_spectator] run spectate
spectate @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] @s
