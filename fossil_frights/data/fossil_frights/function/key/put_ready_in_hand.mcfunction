execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:key/put_disabled_in_hand
execute if predicate fossil_frights:game_state/game_running unless score $day_active ff_day matches 1 run function fossil_frights:key/put_disabled_in_hand
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score @s ff_key_cooldown matches 1.. run function fossil_frights:key/put_cooldown_in_hand with storage fossil_frights:key
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 unless score @s ff_key_cooldown matches 1.. run function fossil_frights:key/put_active_in_hand with storage fossil_frights:key
