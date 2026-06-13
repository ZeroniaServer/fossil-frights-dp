execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $heist_mode_active ff_game_state matches 1 run return run function fossil_frights:game/heists/start_round
execute if score $day_active ff_day matches 1 run function fossil_frights:messages/error/day_already_active
execute if score $day_active ff_day matches 1 run return 0
execute if score $day_current ff_day matches 10.. run function fossil_frights:messages/error/final_day_reached
execute if score $day_current ff_day matches 10.. run return 0
execute unless score $party_mode_active ff_game_state matches 1 if score $day_current ff_day matches 0 if score $run_multiplayer ff_game_state matches 0 as @a[tag=ff_active] run function fossil_frights:leaderboards/increment_run_count
scoreboard players add $day_current ff_day 1
execute if score $day_current ff_day matches 1 if score $run_multiplayer ff_game_state matches 1 run tp @a[tag=ff_active] 20 70 20 0 0
execute if score $run_multiplayer ff_game_state matches 0 as @a[tag=ff_active] run function fossil_frights:leaderboards/update_top_day_from_current
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 1
execute if score $day_current ff_day matches 1 run scoreboard players set $speedrunner_restart_window ff_game_state 100
scoreboard players set $day_flash ff_day 0
scoreboard players set $idle_ticks ff_game_state 0
execute as @a[tag=ff_active] run function fossil_frights:key/refresh
clear @a[tag=ff_active] minecraft:written_book
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/vanilla/written_book]
function fossil_frights:tasks/bookcase/clear
function fossil_frights:tasks/encoder/start_day
function fossil_frights:tasks/tracker/show
function fossil_frights:tasks/tracker/refresh
function fossil_frights:game/start_room/timer_bars/close
execute as @a[tag=ff_active] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute if block 10 71 25 minecraft:lever[powered=true] as @a[tag=ff_active] at @s run playsound fossil-frights:ff_night_shift record @s ~ ~ ~ 1 1
execute if block 10 71 25 minecraft:lever[powered=true] as @a[gamemode=spectator,tag=!ff_tutorial] at @s run playsound fossil-frights:ff_night_shift record @s ~ ~ ~ 1 1
execute if score $day_current ff_day matches 1 run function fossil_frights:game/timer/start
function fossil_frights:game/bossbar/set_day
function fossil_frights:game/time/start_night
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
