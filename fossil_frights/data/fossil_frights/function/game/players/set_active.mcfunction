execute if score $active_set ff_game_state matches 1 unless entity @s[team=ff_guard] run function fossil_frights:messages/error/active_player_already_set
execute if score $active_set ff_game_state matches 1 unless entity @s[team=ff_guard] run return 0

scoreboard players set $active_set ff_game_state 1
scoreboard players set $game_running ff_game_state 0
scoreboard players operation $active ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation $active ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation $active ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation $active ff_active_uuid_3 = @s ff_active_uuid_3
function fossil_frights:game/party/reset
scoreboard players set $active_set ff_game_state 1
function fossil_frights:game/start_room/settings/load_preferences
function fossil_frights:game/party/add_current
