scoreboard players set #snowstorm_particle_timer ff_hallucination 0
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/deactivate
execute as @a[predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/clear_player
function fossil_frights:hallucination/effects/fog_marker/stop
