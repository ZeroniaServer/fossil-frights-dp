execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:tasks/reset
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/start_rest
execute if score $day_current ff_day matches 10 run function fossil_frights:game/timer/freeze
execute if score $day_current ff_day matches 10 as @a[tag=ff_active] run function fossil_frights:leaderboards/update_top_day_from_current
execute if score $day_current ff_day matches 10 as @a[tag=ff_active] run function fossil_frights:leaderboards/update_top_time
execute if score $day_current ff_day matches 10 run function fossil_frights:bossbar/set_victory
execute if score $day_current ff_day matches 10 run function fossil_frights:messages/game/beat_time
execute if score $day_current ff_day matches 10 run function fossil_frights:messages/game/victory_leave_prompt
execute unless score $day_current ff_day matches 10 run function fossil_frights:bossbar/set_break
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:tasks/tracker/hide
