scoreboard players set @s ff_speedrun_delta 0
scoreboard players set @s ff_speedrun_sign 0
execute if score $run_multiplayer ff_game_state matches 1 run title @s subtitle ""
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run title @s subtitle ""
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute store result storage fossil_frights:speedrun runtime.day int 1 run scoreboard players get $day_current ff_day
function fossil_frights:game/start_room/settings/speedrun/runtime/update_day_best_macro with storage fossil_frights:speedrun runtime
execute if score $settings_speedrun_show ff_game_state matches 1 run title @s times 5 40 10
execute if score $settings_speedrun_show ff_game_state matches 1 run function fossil_frights:game/start_room/settings/speedrun/runtime/show_subtitle
execute unless score $settings_speedrun_show ff_game_state matches 1 run title @s subtitle ""
