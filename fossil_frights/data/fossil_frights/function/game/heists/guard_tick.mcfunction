execute if predicate fossil_frights:player/input/sneak run function fossil_frights:game/heists/guard_sneak/sneaking
execute unless predicate fossil_frights:player/input/sneak run function fossil_frights:game/heists/guard_sneak/not_sneaking
function fossil_frights:game/heists/loot/secure_loot/player_tick
execute if score @s ff_heist_paint_fx matches 1.. run function fossil_frights:game/heists/paint_fx/tick
