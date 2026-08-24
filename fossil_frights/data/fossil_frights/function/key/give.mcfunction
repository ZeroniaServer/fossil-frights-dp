execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key_cooldown_length ff_key_cd_cfg
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:key/give_disabled
execute if predicate fossil_frights:game_state/game_running unless score $day_active ff_day matches 1 run function fossil_frights:key/give_disabled
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score @s ff_key_cooldown matches 1.. run function fossil_frights:key/give_cooldown with storage fossil_frights:key
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 unless score @s ff_key_cooldown matches 1.. run function fossil_frights:key/give_active with storage fossil_frights:key
