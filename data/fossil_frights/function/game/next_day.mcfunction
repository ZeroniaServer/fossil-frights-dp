execute unless score $game_running ff_game_state matches 1 run tellraw @a {"text":"No game is running.","color":"red"}
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run tellraw @a {"text":"A day is already active.","color":"red"}
execute if score $day_active ff_day matches 1 run return 0
execute if score $day_current ff_day matches 10.. run tellraw @a {"text":"Day 10 is already the final day.","color":"red"}
execute if score $day_current ff_day matches 10.. run return 0
scoreboard players add $day_current ff_day 1
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 1
scoreboard players set $day_flash ff_day 0
function fossil_frights:bossbar/set_day
function fossil_frights:game/time/start_night
function fossil_frights:game/start_room/day_tracker/refresh
