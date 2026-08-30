function fossil_frights:tasks/hazard/force_pending
function fossil_frights:tasks/task_book_shelf/clear
execute as @a[tag=!ff_ant_fight_music,tag=!ff_parkour_music,tag=!ff_sulfur_strikers_music,tag=!ff_temple_run_music] at @s run playsound fossil-frights:ff_day_complete master @s ~ ~ ~ 1.5 1
stopsound @a music fossil-frights:ff_night_shift
stopsound @a master fossil-frights:ff_night_shift
stopsound @a record fossil-frights:ff_night_shift
scoreboard players set $custom_day_active ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_stopwatch_active ff_day 0
stopwatch remove fossil_frights:day_duration
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
execute as @a[team=ff_guard] run function fossil_frights:key/refresh
function fossil_frights:tasks/reset
function fossil_frights:locator_bar/markers/sync
function fossil_frights:game/frights/worldborder/reset
function fossil_frights:game/time/start_rest
function fossil_frights:game/bossbar/set_break
execute as @a[team=ff_guard] run title @s actionbar {"translate":"ff.messages.info.custom_day_complete","color":"gold","italic":false}
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:tasks/tracker/hide
