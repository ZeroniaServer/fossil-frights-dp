execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
function fossil_frights:game/start_room/settings/gamemode/remove_other_players
tag @a[team=ff_guard] add ff_settings_randomizer_on
function fossil_frights:join/join_pads/randomizer/setup
function fossil_frights:game/start_room/settings/board/refresh
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
