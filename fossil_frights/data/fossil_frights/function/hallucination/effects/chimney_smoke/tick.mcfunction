execute as @a[predicate=fossil_frights:player/team/guard,tag=!ff_chimney_smoke_active_guard] run function fossil_frights:hallucination/effects/chimney_smoke/apply
scoreboard players add #chimney_smoke_particle_timer ff_hallucination 1
execute if score #chimney_smoke_particle_timer ff_hallucination matches 10.. as @a[predicate=fossil_frights:player/team/guard] at @s run particle minecraft:campfire_signal_smoke ~ ~4 ~ 5 1 5 0.01 30
execute if score #chimney_smoke_particle_timer ff_hallucination matches 10.. run scoreboard players set #chimney_smoke_particle_timer ff_hallucination 0
