function fossil_frights:admin/menu/mark_modified
execute if score $timer_frozen ff_day matches 1 if score $heist_stopwatch_active ff_heist matches 1 store success score $heist_stopwatch_active ff_heist store result score $heist_query_now ff_heist run stopwatch query fossil_frights:heist_round 20
execute if score $timer_frozen ff_day matches 1 if score $heist_stopwatch_active ff_heist matches 1 run scoreboard players operation $heist_elapsed_offset ff_heist = $heist_query_now ff_heist
execute if score $timer_frozen ff_day matches 1 if score $heist_stopwatch_active ff_heist matches 1 run scoreboard players operation $heist_elapsed_offset ff_heist -= $heist_elapsed ff_heist
scoreboard players set $timer_frozen ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:admin/menu/heists/timer/show
