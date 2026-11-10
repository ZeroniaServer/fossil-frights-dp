scoreboard players set #chimney_smoke_particle_timer ff_hallucination 0
function fossil_frights:hallucination/effects/fog_marker/begin
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/chimney_smoke/apply
execute as @a[predicate=!fossil_frights:player/team/guard] run function fossil_frights:hallucination/effects/chimney_smoke/clear_player
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound minecraft:entity.generic.burn master @s ~ ~ ~ 1 1
