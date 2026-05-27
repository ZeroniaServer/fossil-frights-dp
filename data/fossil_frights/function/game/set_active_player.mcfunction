execute if score $active_set ff_game_state matches 1 unless entity @s[tag=ff_active] run function fossil_frights:messages/error/active_player_already_set
execute if score $active_set ff_game_state matches 1 unless entity @s[tag=ff_active] run return 0

scoreboard players set $active_set ff_game_state 1
scoreboard players set $game_running ff_game_state 0
execute store result score $active ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score $active ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score $active ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score $active ff_active_uuid_3 run data get entity @s UUID[3] 1
function fossil_frights:game/party_mode/reset
scoreboard players set $active_set ff_game_state 1
function fossil_frights:game/party_mode/add_current
