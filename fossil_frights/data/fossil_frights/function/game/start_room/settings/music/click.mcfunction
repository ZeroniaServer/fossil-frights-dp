advancement revoke @s only fossil_frights:start_room_setting_music_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if entity @s[tag=ff_settings_music_off] run tag @s add ff_settings_toggle_was_disabled
execute if entity @s[tag=ff_settings_toggle_was_disabled] run tag @a[team=ff_guard] remove ff_settings_music_off
execute unless entity @s[tag=ff_settings_toggle_was_disabled] run tag @a[team=ff_guard] add ff_settings_music_off
tag @s remove ff_settings_toggle_was_disabled
function fossil_frights:game/start_room/settings/apply_preferences
execute if entity @s[tag=ff_settings_music_off] run function fossil_frights:messages/settings/music_off
execute unless entity @s[tag=ff_settings_music_off] run function fossil_frights:messages/settings/music_on
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
