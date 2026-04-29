execute unless score $game_running ff_game_state matches 1 run function fossil_frights:key/put_disabled_in_hand
execute if score $game_running ff_game_state matches 1 unless score $day_active ff_day matches 1 run function fossil_frights:key/put_disabled_in_hand
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score @s ff_key_cooldown matches 1.. run function fossil_frights:key/put_cooldown_in_hand with storage fossil_frights:key
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 unless score @s ff_key_cooldown matches 1.. run function fossil_frights:key/put_active_in_hand with storage fossil_frights:key
