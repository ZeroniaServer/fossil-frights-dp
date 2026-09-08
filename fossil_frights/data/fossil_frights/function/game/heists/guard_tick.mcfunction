scoreboard players add @s ff_heist_guard_sneak_ticks 0
scoreboard players add @s ff_heist_guard_unsneak_ticks 0
execute if predicate fossil_frights:player/input/sneak run function fossil_frights:game/heists/guard_sneak/sneaking
execute unless predicate fossil_frights:player/input/sneak run function fossil_frights:game/heists/guard_sneak/not_sneaking
function fossil_frights:game/heists/loot/secure_loot/player_tick
