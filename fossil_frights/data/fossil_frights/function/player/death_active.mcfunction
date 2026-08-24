execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_thief] run return run function fossil_frights:game/heists/death_thief
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard] run return run function fossil_frights:game/heists/death_guard
function fossil_frights:player/respawn_active
execute if entity @s[team=ff_guard] run effect give @s minecraft:blindness 2 1 true
execute if entity @s[team=ff_guard] run effect give @s minecraft:slowness 8 1 true
scoreboard players operation @s ff_key_cooldown = $key_cooldown_length ff_key_cd_cfg
function fossil_frights:key/refresh
