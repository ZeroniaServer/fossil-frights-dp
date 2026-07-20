advancement revoke @s only fossil_frights:start_room_setting_speedrun_click
execute unless entity @s[team=ff_guard] run return 0
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 0 run return 0
execute if score $run_multiplayer ff_game_state matches 1 run return 0
execute if entity @s[tag=ff_settings_speedrun_show] run tag @s add ff_settings_toggle_was_disabled
execute if entity @s[tag=ff_settings_toggle_was_disabled] run tag @a[team=ff_guard] remove ff_settings_speedrun_show
execute unless entity @s[tag=ff_settings_toggle_was_disabled] run tag @a[team=ff_guard] add ff_settings_speedrun_show
tag @s remove ff_settings_toggle_was_disabled
function fossil_frights:game/start_room/settings/api/apply_active_preferences
execute if entity @s[tag=ff_settings_speedrun_show] run function fossil_frights:messages/settings/speedrun_shown
execute unless entity @s[tag=ff_settings_speedrun_show] run function fossil_frights:messages/settings/speedrun_hidden
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
