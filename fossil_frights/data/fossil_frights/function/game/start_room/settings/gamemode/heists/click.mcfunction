advancement revoke @s only fossil_frights:settings_mode_heists_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_settings_seen_heists] run return run function fossil_frights:messages/settings/heists_dialog
function fossil_frights:game/start_room/settings/gamemode/heists/request
