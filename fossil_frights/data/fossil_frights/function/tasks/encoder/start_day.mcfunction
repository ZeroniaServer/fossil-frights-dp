function fossil_frights:tasks/reset
function fossil_frights:tasks/task_book_shelf/onboarding_marker/setup
scoreboard players set $good_karma_active ff_game_state 0
execute if score $good_karma_pending ff_game_state matches 1 if score $settings_mode ff_game_state matches 0 if score $day_current ff_day matches 1..3 run scoreboard players set $good_karma_active ff_game_state 1
execute if score $good_karma_pending ff_game_state matches 1 if score $settings_mode ff_game_state matches 0 if score $day_current ff_day matches 5..6 run scoreboard players set $good_karma_active ff_game_state 1
execute if score $good_karma_pending ff_game_state matches 1 if score $settings_mode ff_game_state matches 0 if score $day_current ff_day matches 8..9 run scoreboard players set $good_karma_active ff_game_state 1
execute if score $day_current ff_day matches 1 run function fossil_frights:tasks/encoder/day_1
execute if score $day_current ff_day matches 2 run function fossil_frights:tasks/encoder/day_2
execute if score $day_current ff_day matches 3 run function fossil_frights:tasks/encoder/day_3
execute if score $day_current ff_day matches 4 run function fossil_frights:tasks/encoder/day_4
execute if score $day_current ff_day matches 5 run function fossil_frights:tasks/encoder/day_5
execute if score $day_current ff_day matches 6 run function fossil_frights:tasks/encoder/day_6
execute if score $day_current ff_day matches 7 run function fossil_frights:tasks/encoder/day_7
execute if score $day_current ff_day matches 8 run function fossil_frights:tasks/encoder/day_8
execute if score $day_current ff_day matches 9 run function fossil_frights:tasks/encoder/day_9
execute if score $day_current ff_day matches 10 run function fossil_frights:tasks/encoder/day_10
execute if score $good_karma_active ff_game_state matches 1 run function fossil_frights:animations/dinocoin/good_karma/used
function fossil_frights:tasks/tracker/refresh
