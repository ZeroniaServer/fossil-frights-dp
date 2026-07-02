execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_thief] run return run function fossil_frights:game/heists/death_thief
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_guard] run return run function fossil_frights:game/heists/death_guard
function fossil_frights:player/respawn_active
scoreboard players operation @s ff_key_cooldown = $key_cooldown_length ff_key_cd_cfg
function fossil_frights:key/refresh
