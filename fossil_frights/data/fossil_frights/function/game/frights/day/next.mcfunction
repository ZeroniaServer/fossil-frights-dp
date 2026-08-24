execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run return run function fossil_frights:game/heists/start/start_round
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/day_already_active
execute if score $day_active ff_day matches 1 run return 0
execute if score $day_current ff_day matches 10.. run function fossil_frights:messages/error/final_day_reached
execute if score $day_current ff_day matches 10.. run return 0
execute if score $day_current ff_day matches 0 as @a[team=ff_guard] run function fossil_frights:leaderboards/increment_run_count
scoreboard players add $day_current ff_day 1
execute if score $run_multiplayer ff_game_state matches 0 as @a[team=ff_guard] run function fossil_frights:leaderboards/update_top_day_from_current
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 1
execute if score $day_current ff_day matches 1 run scoreboard players set $speedrunner_restart_window ff_game_state 100
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
execute as @a[team=ff_guard] run function fossil_frights:key/refresh
clear @a[team=ff_guard] minecraft:written_book
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/vanilla/written_book]
function fossil_frights:tasks/task_book_shelf/clear
function fossil_frights:tasks/encoder/start_day
function fossil_frights:tasks/tracker/show
function fossil_frights:tasks/tracker/refresh
function fossil_frights:game/start_room/locked_door/clear
execute as @a[team=ff_guard] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute unless score $settings_music_off ff_game_state matches 1 as @a[team=ff_guard] run stopsound @s music
execute unless score $settings_music_off ff_game_state matches 1 as @a[team=ff_guard] at @s run playsound fossil-frights:ff_night_shift record @s ~ ~ ~ 1 1
execute unless score $settings_music_off ff_game_state matches 1 as @a[gamemode=spectator,tag=!ff_tutorial] run stopsound @s music
execute unless score $settings_music_off ff_game_state matches 1 as @a[gamemode=spectator,tag=!ff_tutorial] at @s run playsound fossil-frights:ff_night_shift record @s ~ ~ ~ 1 1
execute if score $day_current ff_day matches 1 run function fossil_frights:game/frights/timer/start
function fossil_frights:game/bossbar/set_day
function fossil_frights:game/time/start_night
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/board/refresh
