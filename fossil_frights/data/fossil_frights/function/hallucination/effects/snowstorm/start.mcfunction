scoreboard players set #snowstorm_particle_timer ff_hallucination 0
function fossil_frights:hallucination/effects/fog_marker/begin
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/apply
execute as @a[predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/snowstorm/clear_player
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound minecraft:entity.breeze.slide master @s ~ ~ ~ 1 1
