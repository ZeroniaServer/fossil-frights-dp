execute unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:cameras/swivel/reset
execute if predicate fossil_frights:game_state/heist_mode_active unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:cameras/swivel/reset
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute as @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=11}] at @s run function fossil_frights:cameras/swivel/top_floor
execute as @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=11}] at @s run function fossil_frights:cameras/swivel/top_floor
execute as @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=8}] at @s run function fossil_frights:cameras/swivel/left_hall
execute as @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=8}] at @s run function fossil_frights:cameras/swivel/left_hall
execute as @e[type=minecraft:cave_spider,tag=security_camera,scores={ff_security_camera=9}] at @s run function fossil_frights:cameras/swivel/aviary
execute as @e[type=minecraft:item_display,tag=ff_security_camera_model,scores={ff_security_camera=9}] at @s run function fossil_frights:cameras/swivel/aviary
