execute if score $run_multiplayer ff_game_state matches 1 run title @s subtitle ""
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run title @s subtitle ""
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless score $settings_speedrun_show ff_game_state matches 1 run title @s subtitle ""
execute unless score $settings_speedrun_show ff_game_state matches 1 run return 0
function fossil_frights:game/start_room/settings/speedrun/runtime/show_subtitle
