execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/day_already_active
execute if score $day_active ff_day matches 1 run return 0
execute if score $day_current ff_day matches 10.. run function fossil_frights:messages/error/final_day_reached
execute if score $day_current ff_day matches 10.. run return 0
scoreboard players add $day_current ff_day 1
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 1
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
function fossil_frights:game/start_room/timer_bars/close
execute as @a[tag=ff_active] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if score $day_current ff_day matches 1 run function fossil_frights:game/timer/start
function fossil_frights:bossbar/set_day
function fossil_frights:game/time/start_night
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
