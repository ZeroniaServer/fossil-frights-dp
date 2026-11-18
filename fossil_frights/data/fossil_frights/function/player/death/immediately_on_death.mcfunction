advancement revoke @s only fossil_frights:util/player/immediately_detect_death
scoreboard players reset @s ff_immediately_detect_death

# Thieves drop a dinocoin on death if they have at least two in their inventory
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief store result score #thief_coin_count ff_game_state if items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}]
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief if score #thief_coin_count ff_game_state matches 2.. run function fossil_frights:player/death/drop_coin_as_thief

# Thieves lose their inventory immediately on death
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief run clear @s