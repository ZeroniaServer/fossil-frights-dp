tag @s add ff_tutorial_camera_check
tag @s remove ff_tutorial_camera_has_owner
scoreboard players operation $tutorial_uuid_0 ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation $tutorial_uuid_1 ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation $tutorial_uuid_2 ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation $tutorial_uuid_3 ff_active_uuid_3 = @s ff_active_uuid_3
execute as @a[tag=ff_tutorial] if score @s ff_active_uuid_0 = $tutorial_uuid_0 ff_active_uuid_0 if score @s ff_active_uuid_1 = $tutorial_uuid_1 ff_active_uuid_1 if score @s ff_active_uuid_2 = $tutorial_uuid_2 ff_active_uuid_2 if score @s ff_active_uuid_3 = $tutorial_uuid_3 ff_active_uuid_3 run tag @e[type=minecraft:text_display,tag=ff_tutorial_camera_check,limit=1] add ff_tutorial_camera_has_owner
execute unless entity @s[tag=ff_tutorial_camera_has_owner] run kill @s
tag @s remove ff_tutorial_camera_check
