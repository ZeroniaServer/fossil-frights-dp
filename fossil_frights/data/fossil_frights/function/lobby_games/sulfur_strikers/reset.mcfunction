scoreboard players set $yellow ff_sulfur 0
scoreboard players set $cyan ff_sulfur 0
scoreboard players set $score_cooldown ff_sulfur 0
scoreboard players set $powerup_cooldown ff_sulfur 100
scoreboard players set $powerup_particle_cooldown ff_sulfur 0
scoreboard players set $powerup_player_count ff_sulfur 0
scoreboard players set $powerup_roll ff_sulfur 0
scoreboard players set $powerup_spawn ff_sulfur 0
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{sulfur_striker_powerup:true}] run kill @s
clear @a *[minecraft:custom_data~{sulfur_striker_powerup:true}]
execute as @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball] run data merge entity @s {Size:0}
kill @e[type=minecraft:sulfur_cube,tag=sulfer_striker_ball]
kill @e[type=minecraft:block_display,tag=ff_sulfur_strikers_ball_visual]
function fossil_frights:lobby_games/sulfur_strikers/display/setup
function fossil_frights:lobby_games/sulfur_strikers/ball/spawn
