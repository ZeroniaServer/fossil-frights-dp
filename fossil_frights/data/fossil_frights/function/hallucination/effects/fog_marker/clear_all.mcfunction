schedule clear fossil_frights:hallucination/effects/fog_marker/clear_transition
schedule clear fossil_frights:hallucination/effects/fog_marker/sweep_orphans
schedule clear fossil_frights:hallucination/effects/snowstorm/clear_deactivate
schedule clear fossil_frights:hallucination/effects/snowstorm/sweep_orphan_markers
execute as @a run function fossil_frights:player/clear_posteffects
kill @e[type=minecraft:item_display,tag=fog_marker,tag=ff_hallucination_fog_marker]
kill @e[type=minecraft:item_display,tag=fog_marker,tag=ff_snowstorm_fog_marker]
