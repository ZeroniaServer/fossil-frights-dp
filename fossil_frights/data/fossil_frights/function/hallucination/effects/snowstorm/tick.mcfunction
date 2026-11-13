execute as @a[predicate=fossil_frights:player/team/guard,tag=!ff_snowstorm_active_guard] run function fossil_frights:hallucination/effects/snowstorm/apply
scoreboard players add #snowstorm_particle_timer ff_hallucination 1
execute if score #snowstorm_particle_timer ff_hallucination matches 10.. as @a[predicate=fossil_frights:player/team/guard] at @s run particle minecraft:snowflake ~ ~5 ~ 5 2 5 0 50 force @a[predicate=fossil_frights:player/team/guard]
execute if score #snowstorm_particle_timer ff_hallucination matches 10.. run scoreboard players set #snowstorm_particle_timer ff_hallucination 0
