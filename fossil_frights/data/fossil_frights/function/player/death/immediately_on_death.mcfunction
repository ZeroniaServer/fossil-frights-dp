advancement revoke @s only fossil_frights:util/player/immediately_detect_death
scoreboard players reset @s ff_immediately_detect_death

# Thieves drop a dinocoin on death if they have at least TWO in their inventory
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief run function fossil_frights:player/death/handle_thief_coins

# Thieves lose their inventory immediately on death
execute if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/team/thief run clear @s *[!custom_data~{ff_heist_rules:{keep_on_thief_death:true}}]
