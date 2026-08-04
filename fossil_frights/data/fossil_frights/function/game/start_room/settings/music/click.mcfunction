advancement revoke @s only fossil_frights:start_room_setting_music_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if score $settings_music_off ff_game_state matches 1 run tag @s add ff_settings_toggle_was_disabled
execute if entity @s[tag=ff_settings_toggle_was_disabled] run scoreboard players set $settings_music_off ff_game_state 0
execute unless entity @s[tag=ff_settings_toggle_was_disabled] run scoreboard players set $settings_music_off ff_game_state 1
execute if score $settings_music_off ff_game_state matches 1 run tag @s add ff_settings_music_off
execute unless score $settings_music_off ff_game_state matches 1 run tag @s remove ff_settings_music_off
tag @s remove ff_settings_toggle_was_disabled
function fossil_frights:game/start_room/settings/apply_preferences
execute if score $settings_music_off ff_game_state matches 1 run function fossil_frights:messages/settings/music_off
execute unless score $settings_music_off ff_game_state matches 1 run function fossil_frights:messages/settings/music_on
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
