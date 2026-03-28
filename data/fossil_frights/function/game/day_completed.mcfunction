execute unless score $game_running ff_game_state matches 1 run tellraw @a {"text":"No game is running.","color":"red"}
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run tellraw @a {"text":"No day is currently active.","color":"red"}
execute unless score $day_active ff_day matches 1 run return 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_timer ff_day 0
execute if score $day_current ff_day matches 10 run function fossil_frights:bossbar/set_victory
execute unless score $day_current ff_day matches 10 run function fossil_frights:bossbar/set_break
