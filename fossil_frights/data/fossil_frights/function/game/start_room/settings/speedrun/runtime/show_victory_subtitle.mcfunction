execute if score $run_multiplayer ff_game_state matches 1 run title @s subtitle ""
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if score $run_admin_modified ff_game_state matches 1 run title @s subtitle ""
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_settings_speedrun_show] run title @s subtitle ""
execute unless entity @s[tag=ff_settings_speedrun_show] run return 0
function fossil_frights:game/start_room/settings/speedrun/runtime/show_subtitle
