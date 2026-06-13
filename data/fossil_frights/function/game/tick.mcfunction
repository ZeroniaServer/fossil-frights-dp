function fossil_frights:game/party_mode/sync
function fossil_frights:game/party_mode/tick
function fossil_frights:game/heists/tick
execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $time_anim_active ff_day matches 1 run function fossil_frights:game/time/tick
function fossil_frights:game/timer/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if block 20 71 28 minecraft:warped_button[powered=true] if entity @a[limit=1,tag=ff_active,x=18,y=70,z=24,dx=5,dy=3,dz=6] run function fossil_frights:game/next_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 run scoreboard players add $day_flash ff_day 1
execute if score $day_flash ff_day matches 20.. run scoreboard players set $day_flash ff_day 0
execute unless score $game_running ff_game_state matches 1 run scoreboard players set $day_flash ff_day 0
execute if score $day_active ff_day matches 1 run scoreboard players set $day_flash ff_day 0
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 run scoreboard players add $idle_ticks ff_game_state 1
execute unless score $game_running ff_game_state matches 1 run scoreboard players set $idle_ticks ff_game_state 0
execute if score $day_active ff_day matches 1 run scoreboard players set $idle_ticks ff_game_state 0
execute if entity @a[limit=1,tag=ff_in_queue] unless score $idle_queue_present ff_game_state matches 1 if score $idle_ticks ff_game_state matches 3600.. run scoreboard players set $idle_ticks ff_game_state 2400
execute if entity @a[limit=1,tag=ff_in_queue] run scoreboard players set $idle_queue_present ff_game_state 1
execute unless entity @a[tag=ff_in_queue] run scoreboard players set $idle_queue_present ff_game_state 0
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 1200 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 2400 run function fossil_frights:messages/game/idle_warning_one_minute
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 3400 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if score $party_mode_active ff_game_state matches 1 if score $idle_ticks ff_game_state matches 1200 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if score $party_mode_active ff_game_state matches 1 if score $idle_ticks ff_game_state matches 2400 run function fossil_frights:messages/game/idle_warning_one_minute
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if score $party_mode_active ff_game_state matches 1 if score $idle_ticks ff_game_state matches 3400 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless score $party_mode_active ff_game_state matches 1 unless entity @a[tag=ff_in_queue] if score $idle_ticks ff_game_state matches 9600 run function fossil_frights:messages/game/idle_warning_two_minutes
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless score $party_mode_active ff_game_state matches 1 unless entity @a[tag=ff_in_queue] if score $idle_ticks ff_game_state matches 10800 run function fossil_frights:messages/game/idle_warning_one_minute
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless score $party_mode_active ff_game_state matches 1 unless entity @a[tag=ff_in_queue] if score $idle_ticks ff_game_state matches 11800 run function fossil_frights:messages/game/idle_warning_ten_seconds
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if entity @a[limit=1,tag=ff_in_queue] if score $idle_ticks ff_game_state matches 3600.. run function fossil_frights:game/reset
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 if score $party_mode_active ff_game_state matches 1 if score $idle_ticks ff_game_state matches 3600.. run function fossil_frights:game/reset
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 unless score $party_mode_active ff_game_state matches 1 unless entity @a[tag=ff_in_queue] if score $idle_ticks ff_game_state matches 12000.. run function fossil_frights:game/reset
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches 10 if score $idle_ticks ff_game_state matches 600.. run function fossil_frights:game/reset
execute if score $game_running ff_game_state matches 1 run function fossil_frights:game/settings/toggle_spectators/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 run function fossil_frights:game/settings/setting2/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 run function fossil_frights:game/settings/setting3/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 run function fossil_frights:game/settings/speedrun_toggle/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $timer_frozen ff_day matches 0 if score $day_timer ff_day matches ..5999 run scoreboard players add $day_timer ff_day 1
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run bossbar set fossil_frights:bossbar value 0
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 store result bossbar fossil_frights:bossbar value run scoreboard players get $day_timer ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_tmp ff_day = #day_full ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_tmp ff_day -= $day_timer ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_seconds_left ff_day = $day_tmp ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_seconds_left ff_day /= #day_tick ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $day_timer ff_day matches 4800..5999 run scoreboard players operation $day_sound_tmp ff_day = $day_timer ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $day_timer ff_day matches 4800..5999 run scoreboard players operation $day_sound_tmp ff_day %= #day_tick ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $day_timer ff_day matches 4800..5999 if score $day_sound_tmp ff_day matches 0 unless block 10 71 25 minecraft:lever[powered=true] as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1.5 1
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run function fossil_frights:tasks/hazard/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run function fossil_frights:game/worldborder/update_warning
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run function fossil_frights:messages/bossbar/update_day_name
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $day_timer ff_day matches 6000.. run function fossil_frights:game/day_timeout
