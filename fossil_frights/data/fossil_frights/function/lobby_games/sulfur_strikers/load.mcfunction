scoreboard players set $yellow ff_sulfur 0
scoreboard players set $cyan ff_sulfur 0
scoreboard players set $type_roll ff_sulfur 0
scoreboard players set $size_roll ff_sulfur 0
scoreboard players set $ball_count ff_sulfur 0
scoreboard players set $score_cooldown ff_sulfur 0
scoreboard players set $display_ready ff_sulfur 0
scoreboard players set $powerup_cooldown ff_sulfur 100
scoreboard players set $powerup_particle_cooldown ff_sulfur 0
scoreboard players set $powerup_roll ff_sulfur 0
scoreboard players set $powerup_spawn ff_sulfur 0
scoreboard players set $powerup_player_count ff_sulfur 0
scoreboard players set #sulfur_strikers_active ff_sulfur 0
scoreboard players set #sulfur_strikers_was_active ff_sulfur 0
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{sulfur_striker_powerup:true}] run kill @s
function fossil_frights:lobby_games/sulfur_strikers/teleporter_setup
function fossil_frights:lobby_games/sulfur_strikers/display/setup
function fossil_frights:lobby_games/sulfur_strikers/ball/ensure
