tag @e[type=minecraft:item_display,tag=fog_marker,tag=ff_snowstorm_fog_marker] add ff_hallucination_fog_marker
schedule clear fossil_frights:hallucination/effects/snowstorm/clear_deactivate
schedule clear fossil_frights:hallucination/effects/snowstorm/sweep_orphan_markers
schedule clear fossil_frights:hallucination/effects/fog_marker/clear_transition
execute as @a run posteffect remove @s fossil_frights:snow_storm/deactivate
execute as @a run posteffect remove @s fossil_frights:chimney_smoke/deactivate
schedule clear fossil_frights:hallucination/effects/fog_marker/sweep_orphans
schedule function fossil_frights:hallucination/effects/fog_marker/sweep_orphans 5s
