execute as @a run posteffect remove @s fossil_frights:snow_storm/deactivate
execute as @a run posteffect remove @s fossil_frights:chimney_smoke/deactivate
execute as @a[tag=!ff_snowstorm_active_guard,tag=!ff_chimney_smoke_active_guard] run function fossil_frights:hallucination/effects/fog_marker/cleanup_player_marker
execute unless predicate fossil_frights:game_state/hallucination_active/fog_marker run kill @e[type=minecraft:item_display,tag=fog_marker,tag=ff_hallucination_fog_marker]
execute unless predicate fossil_frights:game_state/hallucination_active/fog_marker run schedule clear fossil_frights:hallucination/effects/fog_marker/sweep_orphans
