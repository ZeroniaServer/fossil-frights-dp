# grant the primary ff creators hoverboards in the lobby
execute unless predicate fossil_frights:world/is_realms if entity @s[team=ff_lobby] if predicate fossil_frights:player/is_creator run function fossil_frights:items/creator_hoverboards/grant_lobby
