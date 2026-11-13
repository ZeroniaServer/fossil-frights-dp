execute at @s run particle entity_effect{color:0xFBFEFC00} ~ ~1 ~ force @a[predicate=fossil_frights:player/team/guard]
tag @s remove ff_snowstorm_active_guard
function fossil_frights:hallucination/effects/fog_marker/cleanup_player_marker
