execute unless entity @s[type=minecraft:player] run return 0
execute unless entity @s[tag=ff_active] run function fossil_frights:messages/error/only_active_players_can_start_multiplayer_games
execute unless entity @s[tag=ff_active] run return 0
function fossil_frights:game/party_mode/activate
