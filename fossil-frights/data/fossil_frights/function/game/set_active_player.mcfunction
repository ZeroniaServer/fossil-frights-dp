execute if score $active_set ff_game_state matches 1 unless entity @s[team=ff_guard] run function fossil_frights:messages/error/active_player_already_set
execute if score $active_set ff_game_state matches 1 unless entity @s[team=ff_guard] run return 0

scoreboard players set $active_set ff_game_state 1
scoreboard players set $game_running ff_game_state 0
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score $active ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score $active ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score $active ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score $active ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
function fossil_frights:game/party_mode/reset
scoreboard players set $active_set ff_game_state 1
function fossil_frights:game/party_mode/add_current
