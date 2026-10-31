execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[predicate=fossil_frights:player/team/thief] run return run function fossil_frights:game/heists/death_thief
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[predicate=fossil_frights:player/team/guard] run return run function fossil_frights:game/heists/death_guard
function fossil_frights:player/respawn_active
execute if entity @s[predicate=fossil_frights:player/team/guard] run effect give @s minecraft:blindness 2 1 true
execute if entity @s[predicate=fossil_frights:player/team/guard] run effect give @s minecraft:slowness 8 1 true
execute store result score @s ff_key_cooldown run compute default integer fossil_frights:items/key/cooldown_length
function fossil_frights:key/refresh
