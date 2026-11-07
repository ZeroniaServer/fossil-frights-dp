execute if score @s ff_heist_invisipunches matches 1.. run scoreboard players remove @s ff_heist_invisipunches 1
execute if score $timer_frozen ff_day matches 1 run return 0
execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute unless score $heist_stopwatch_active ff_heist matches 1 run return 0
function fossil_frights:game/heists/timer/sync
execute unless score $heist_stopwatch_active ff_heist matches 1 run return 0
execute if score $heist_timer ff_heist matches ..0 run return 0
execute if score $heist_loot ff_heist matches ..899 if score $heist_timer ff_heist matches ..1200 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..799 if score $heist_timer ff_heist matches ..2400 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..699 if score $heist_timer ff_heist matches ..3600 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..599 if score $heist_timer ff_heist matches ..4800 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..499 if score $heist_timer ff_heist matches ..6000 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..399 if score $heist_timer ff_heist matches ..7200 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..299 if score $heist_timer ff_heist matches ..8400 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..199 if score $heist_timer ff_heist matches ..9600 run return run function fossil_frights:game/heists/punch/death_penalty/subtract_two
execute if score $heist_loot ff_heist matches ..99 if score $heist_timer ff_heist matches ..10800 run function fossil_frights:game/heists/punch/death_penalty/subtract_two
