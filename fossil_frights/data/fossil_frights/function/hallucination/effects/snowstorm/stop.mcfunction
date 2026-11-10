scoreboard players set #snowstorm_particle_timer ff_hallucination 0
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/deactivate
execute as @a[predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/clear_player
schedule clear fossil_frights:hallucination/effects/snowstorm/clear_deactivate
schedule function fossil_frights:hallucination/effects/snowstorm/clear_deactivate 2s
schedule clear fossil_frights:hallucination/effects/snowstorm/sweep_orphan_markers
