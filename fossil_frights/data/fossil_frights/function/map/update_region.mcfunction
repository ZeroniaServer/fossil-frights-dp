advancement revoke @s only fossil_frights:map_region
execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless entity @s[team=ff_guard] run return 0
execute unless predicate fossil_frights:player/inventory/map_or_camera_remote run return 0
function fossil_frights:map/resolve_region
