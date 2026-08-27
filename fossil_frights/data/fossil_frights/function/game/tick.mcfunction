function fossil_frights:game/rejoin/tick
function fossil_frights:game/party/sync
function fossil_frights:game/party/tick
function fossil_frights:game/heists/tick
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute if score $time_anim_active ff_day matches 1 run function fossil_frights:game/time/tick
function fossil_frights:game/frights/timer/tick
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $heist_button_lock ff_game_state matches 0 if score $party_button_lock ff_game_state matches 0 unless score $defeat_lock ff_game_state matches 1.. if block 20 71 28 minecraft:warped_button[powered=true] if entity @a[limit=1,team=ff_guard,x=18,y=70,z=24,dx=5,dy=3,dz=6] run function fossil_frights:game/frights/day/next
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 run scoreboard players add $day_flash ff_day 1
execute if score $day_flash ff_day matches 20.. run scoreboard players set $day_flash ff_day 0
execute unless predicate fossil_frights:game_state/game_running run scoreboard players set $day_flash ff_day 0
execute if score $day_active ff_day matches 1 run scoreboard players set $day_flash ff_day 0
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 run scoreboard players add $idle_ticks ff_game_state 1
execute unless predicate fossil_frights:game_state/game_running run scoreboard players set $idle_ticks ff_game_state 0
execute if score $day_active ff_day matches 1 run scoreboard players set $idle_ticks ff_game_state 0
execute if entity @a[limit=1,tag=ff_in_queue] unless score $idle_queue_present ff_game_state matches 1 if score $idle_ticks ff_game_state matches 3600.. run scoreboard players set $idle_ticks ff_game_state 2400
execute if entity @a[limit=1,tag=ff_in_queue] run scoreboard players set $idle_queue_present ff_game_state 1
execute unless entity @a[limit=1,tag=ff_in_queue] run scoreboard players set $idle_queue_present ff_game_state 0
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 1200 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 2400 run function fossil_frights:messages/game/idle_warning_one_minute
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 3400 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if predicate fossil_frights:game_state/party_mode_active if score $idle_ticks ff_game_state matches 1200 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if predicate fossil_frights:game_state/party_mode_active if score $idle_ticks ff_game_state matches 2400 run function fossil_frights:messages/game/idle_warning_one_minute
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if predicate fossil_frights:game_state/party_mode_active if score $idle_ticks ff_game_state matches 3400 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless predicate fossil_frights:game_state/party_mode_active unless entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 9600 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless predicate fossil_frights:game_state/party_mode_active unless entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 10800 run function fossil_frights:messages/game/idle_warning_one_minute
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless predicate fossil_frights:game_state/party_mode_active unless entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 11800 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 3600.. run function fossil_frights:game/reset
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if predicate fossil_frights:game_state/party_mode_active if score $idle_ticks ff_game_state matches 3600.. run function fossil_frights:game/reset
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless predicate fossil_frights:game_state/party_mode_active unless entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 12000.. run function fossil_frights:game/reset
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 0 if score $day_current ff_day matches 10 if score $idle_ticks ff_game_state matches 600.. run function fossil_frights:game/reset
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $timer_frozen ff_day matches 0 run function fossil_frights:game/frights/timer/sync_day
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $timer_frozen ff_day matches 0 unless score $day_stopwatch_active ff_day matches 1 run return 0
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run bossbar set fossil_frights:bossbar value 0
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 store result bossbar fossil_frights:bossbar value run scoreboard players get $day_timer ff_day
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run scoreboard players operation $day_tmp ff_day = #day_full ff_day
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run scoreboard players operation $day_tmp ff_day -= $day_timer ff_day
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run scoreboard players operation $day_seconds_left ff_day = $day_tmp ff_day
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run scoreboard players operation $day_seconds_left ff_day /= #ticks_per_second ff_constant
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $day_timer ff_day matches 4800..5999 run scoreboard players operation $day_sound_tmp ff_day = $day_timer ff_day
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $day_timer ff_day matches 4800..5999 run scoreboard players operation $day_sound_tmp ff_day %= #ticks_per_second ff_constant
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $day_timer ff_day matches 4800..5999 if score $day_sound_tmp ff_day matches 0 if score $settings_music_off ff_game_state matches 1 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run function fossil_frights:tasks/hazard/tick
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run function fossil_frights:game/frights/worldborder/update_warning
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 run function fossil_frights:messages/bossbar/update_day_name
function fossil_frights:game/start_room/day_tracker/refresh
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $day_timer ff_day matches 6000.. run function fossil_frights:game/timeout/day
