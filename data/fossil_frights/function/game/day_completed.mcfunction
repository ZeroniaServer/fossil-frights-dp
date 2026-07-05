execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
function fossil_frights:tasks/hazard/force_pending
function fossil_frights:tasks/bookcase/clear
execute as @a[team=ff_guard] run function fossil_frights:game/give_cubekoin
execute as @a[team=ff_guard] run function fossil_frights:advancements/progression/grant_day_completed
execute as @a at @s run playsound fossil-frights:ff_day_complete master @s ~ ~ ~ 1.5 1
stopsound @a music fossil-frights:ff_night_shift
stopsound @a master fossil-frights:ff_night_shift
stopsound @a record fossil-frights:ff_night_shift
scoreboard players set $day_active ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
execute as @a[team=ff_guard] run function fossil_frights:key/refresh
function fossil_frights:tasks/reset
function fossil_frights:compass/markers/sync
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/start_rest
execute if score $day_current ff_day matches 10 run function fossil_frights:game/timer/freeze
execute if score $day_current ff_day matches 10 if score $timer_ticks ff_day matches ..24000 as @a[team=ff_guard] run advancement grant @s only fossil_frights:02_achievements/twenty_minute_club
execute if score $day_current ff_day matches 10 if score $run_multiplayer ff_game_state matches 0 as @a[team=ff_guard] run function fossil_frights:leaderboards/update_top_day_from_current
execute if score $day_current ff_day matches 10 if score $run_multiplayer ff_game_state matches 0 as @a[team=ff_guard] run function fossil_frights:leaderboards/update_top_time
execute if score $day_current ff_day matches 10 if score $run_multiplayer ff_game_state matches 1 as @a[team=ff_guard] run function fossil_frights:leaderboards/update_duo_best
execute as @a[team=ff_guard] run function fossil_frights:game/speedrun/process_day_best
execute if score $day_current ff_day matches 10 run function fossil_frights:game/bossbar/set_victory
execute if score $day_current ff_day matches 10 run scoreboard players set $victory_complete ff_game_state 1
execute if score $day_current ff_day matches 10 run function fossil_frights:messages/game/beat_time
execute if score $day_current ff_day matches 10 run function fossil_frights:items/other/confetti_cannon/give_all
execute if score $day_current ff_day matches 10 run function fossil_frights:game/victory/celebrate
execute if score $day_current ff_day matches 10 run function fossil_frights:game/reset_spectators
execute if score $day_current ff_day matches 10 run function fossil_frights:messages/game/victory_leave_prompt
execute unless score $day_current ff_day matches 10 run function fossil_frights:game/bossbar/set_break
execute as @a[team=ff_guard] run title @s actionbar [{"translate":"ff.day_complete","color":"gold","italic":false,"with":[{"score":{"name":"$day_current","objective":"ff_day"},"color":"gold"}]}]
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
function fossil_frights:tasks/tracker/hide
