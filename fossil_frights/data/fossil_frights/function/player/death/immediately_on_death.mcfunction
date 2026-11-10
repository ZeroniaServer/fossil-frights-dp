advancement revoke @s only fossil_frights:util/player/immediately_detect_death
scoreboard players reset @s ff_immediately_detect_death

# Thieves drop a dinocoin on death if they have at least one in their inventory
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief if predicate fossil_frights:player/inventory/dinocoin run function fossil_frights:player/death/drop_coin_as_thief
