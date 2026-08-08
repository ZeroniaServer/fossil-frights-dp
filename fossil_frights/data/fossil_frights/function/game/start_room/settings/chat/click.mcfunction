advancement revoke @s only fossil_frights:start_room_setting_chat_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if score $settings_chat_hidden ff_game_state matches 1 run tag @s add ff_settings_toggle_was_disabled
execute if entity @s[tag=ff_settings_toggle_was_disabled] run scoreboard players set $settings_chat_hidden ff_game_state 0
execute unless entity @s[tag=ff_settings_toggle_was_disabled] run scoreboard players set $settings_chat_hidden ff_game_state 1
execute if score $settings_chat_hidden ff_game_state matches 1 run tag @s add ff_settings_chat_hidden
execute unless score $settings_chat_hidden ff_game_state matches 1 run tag @s remove ff_settings_chat_hidden
tag @s remove ff_settings_toggle_was_disabled
function fossil_frights:game/start_room/settings/apply_preferences
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
