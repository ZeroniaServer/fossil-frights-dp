kill @e[type=cave_spider,tag=security_camera]
kill @e[type=minecraft:text_display,tag=security_camera_target]
execute as @e[type=item_display,tag=security_camera] at @s run function fossil_frights:tasks/easy/check_security/spawn_spider
