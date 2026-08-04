execute if score $heist_button_lock ff_game_state matches 1.. run scoreboard players remove $heist_button_lock ff_game_state 1
execute if score $heist_button_lock ff_game_state matches ..0 run scoreboard players set $heist_button_lock ff_game_state 0
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
function fossil_frights:game/heists/regen_lock_tick
function fossil_frights:game/heists/capture_point/tick
execute if score $victory_complete ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches 10 run scoreboard players add $idle_ticks ff_game_state 1
execute if score $victory_complete ff_game_state matches 1 if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches 10 if score $idle_ticks ff_game_state matches 600.. run function fossil_frights:game/reset
execute if score $victory_complete ff_game_state matches 1 run return 0
execute if score $heist_round_active ff_game_state matches 0 unless entity @a[limit=1,team=ff_thief] run scoreboard players set $heist_thieves_ready ff_game_state 0
execute if score $heist_round_active ff_game_state matches 0 run function fossil_frights:game/heists/waiting_text/refresh
execute if score $heist_round_active ff_game_state matches 0 run scoreboard players add $heist_wait_ticks ff_heist 1
execute if score $heist_round_active ff_game_state matches 0 if entity @a[limit=1,tag=ff_in_queue] unless score $heist_wait_queue_present ff_heist matches 1 if score $heist_wait_ticks ff_heist matches 3600.. run scoreboard players set $heist_wait_ticks ff_heist 2400
execute if score $heist_round_active ff_game_state matches 0 if entity @a[limit=1,tag=ff_in_queue] run scoreboard players set $heist_wait_queue_present ff_heist 1
execute if score $heist_round_active ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run scoreboard players set $heist_wait_queue_present ff_heist 0
execute if score $heist_round_active ff_game_state matches 0 if entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 1200 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if score $heist_round_active ff_game_state matches 0 if entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 2400 run function fossil_frights:messages/game/idle_warning_one_minute
execute if score $heist_round_active ff_game_state matches 0 if entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 3400 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if score $heist_round_active ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 9600 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if score $heist_round_active ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 10800 run function fossil_frights:messages/game/idle_warning_one_minute
execute if score $heist_round_active ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 11800 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if score $heist_round_active ff_game_state matches 0 if entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 3600.. run function fossil_frights:game/reset
execute if score $heist_round_active ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] if score $heist_wait_ticks ff_heist matches 12000.. run function fossil_frights:game/reset
execute if score $heist_round_active ff_game_state matches 0 if score $heist_button_lock ff_game_state matches 0 if score $heist_players_ready ff_game_state matches 1 if block 20 71 28 minecraft:warped_button[powered=true] if entity @a[limit=1,team=ff_guard,x=18,y=70,z=24,dx=5,dy=3,dz=6] run function fossil_frights:game/heists/start_round
execute if score $heist_round_active ff_game_state matches 1 run function fossil_frights:game/heists/round_tick
function fossil_frights:game/start_room/day_button/refresh
