execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1

tag @a[tag=ff_active] remove ff_active
execute if score $active_set ff_game_state matches 1 as @a if score @s ff_active_uuid_0 = $active ff_active_uuid_0 if score @s ff_active_uuid_1 = $active ff_active_uuid_1 if score @s ff_active_uuid_2 = $active ff_active_uuid_2 if score @s ff_active_uuid_3 = $active ff_active_uuid_3 run tag @s add ff_active
execute if score $active_set ff_game_state matches 1 unless entity @a[tag=ff_active] run function fossil_frights:game/handle_active_disconnect
execute if score $time_anim_active ff_day matches 1 run function fossil_frights:game/time/tick
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches ..9 run scoreboard players add $day_flash ff_day 1
execute if score $day_flash ff_day matches 20.. run scoreboard players set $day_flash ff_day 0
execute unless score $game_running ff_game_state matches 1 run scoreboard players set $day_flash ff_day 0
execute if score $day_active ff_day matches 1 run scoreboard players set $day_flash ff_day 0
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $day_timer ff_day matches ..5999 run scoreboard players add $day_timer ff_day 1
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run bossbar set fossil_frights:bossbar value 0
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 store result bossbar fossil_frights:bossbar value run scoreboard players get $day_timer ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_tmp ff_day = #day_full ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_tmp ff_day -= $day_timer ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_seconds_left ff_day = $day_tmp ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run scoreboard players operation $day_seconds_left ff_day /= #day_tick ff_day
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run function fossil_frights:game/worldborder/update_warning
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run function fossil_frights:messages/bossbar/update_day_name
function fossil_frights:game/start_room/day_tracker/refresh
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if score $day_timer ff_day matches 6000.. run function fossil_frights:game/day_timeout
