execute as @a[tag=ff_snowstorm_active_guard,predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/clear_player
execute as @a[tag=ff_chimney_smoke_active_guard,predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/chimney_smoke/clear_player
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/fog_marker/follow_player
