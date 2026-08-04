scoreboard players set @s ff_speedrun_delta 0
scoreboard players set @s ff_speedrun_sign 0
execute if score $run_multiplayer ff_game_state matches 1 run title @s subtitle ""
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run title @s subtitle ""
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute if score $day_current ff_day matches 1 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day1_best
execute if score $day_current ff_day matches 2 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day2_best
execute if score $day_current ff_day matches 3 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day3_best
execute if score $day_current ff_day matches 4 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day4_best
execute if score $day_current ff_day matches 5 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day5_best
execute if score $day_current ff_day matches 6 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day6_best
execute if score $day_current ff_day matches 7 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day7_best
execute if score $day_current ff_day matches 8 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day8_best
execute if score $day_current ff_day matches 9 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day9_best
execute if score $day_current ff_day matches 10 run function fossil_frights:game/start_room/settings/speedrun/runtime/update_day10_best
execute if entity @s[tag=ff_settings_speedrun_show] run title @s times 5 40 10
execute if entity @s[tag=ff_settings_speedrun_show] run function fossil_frights:game/start_room/settings/speedrun/runtime/show_subtitle
execute unless entity @s[tag=ff_settings_speedrun_show] run title @s subtitle ""
