execute unless entity @s[type=minecraft:player] run return 0
execute unless predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/only_active_players_can_start_multiplayer_games
execute unless predicate fossil_frights:player/is_playing run return 0
function fossil_frights:game/party_mode/activate
