execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key ff_key_cd_cfg
execute unless score $game_running ff_game_state matches 1 run function fossil_frights:key/give_disabled
execute if score $game_running ff_game_state matches 1 unless score $day_active ff_day matches 1 run function fossil_frights:key/give_disabled
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score @s ff_key_cooldown matches 1.. run function fossil_frights:key/give_cooldown with storage fossil_frights:key
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 unless score @s ff_key_cooldown matches 1.. run function fossil_frights:key/give_active with storage fossil_frights:key
