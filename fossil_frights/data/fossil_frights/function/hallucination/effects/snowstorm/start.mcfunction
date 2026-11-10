scoreboard players set #snowstorm_particle_timer ff_hallucination 0
schedule clear fossil_frights:hallucination/effects/snowstorm/clear_deactivate
schedule clear fossil_frights:hallucination/effects/snowstorm/sweep_orphan_markers
schedule function fossil_frights:hallucination/effects/snowstorm/sweep_orphan_markers 5s
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/apply
execute as @a[predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/clear_player
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound minecraft:entity.breeze.slide master @s ~ ~ ~ 1 1
