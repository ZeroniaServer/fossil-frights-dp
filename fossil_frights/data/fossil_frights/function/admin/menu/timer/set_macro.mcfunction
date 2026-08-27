execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
function fossil_frights:admin/menu/mark_modified
$scoreboard players set $day_timer ff_day $(time)
execute if score $day_stopwatch_active ff_day matches 0 run stopwatch remove fossil_frights:day_duration
execute if score $day_stopwatch_active ff_day matches 0 store success score $day_stopwatch_active ff_day run stopwatch create fossil_frights:day_duration
scoreboard players set $day_timer_offset ff_day 0
execute if score $day_stopwatch_active ff_day matches 1 store success score $day_stopwatch_active ff_day store result score $day_timer_offset ff_day run stopwatch query fossil_frights:day_duration 20
execute if score $day_stopwatch_active ff_day matches 1 run scoreboard players operation $day_timer_offset ff_day -= $day_timer ff_day
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:game/bossbar/update_day
