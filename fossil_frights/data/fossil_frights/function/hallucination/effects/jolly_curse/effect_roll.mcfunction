# One shared guard effect roll every 5 seconds: 70% none, then 10%, 5%, 5%, 5%, 5%.
scoreboard players set #jolly_curse_effect_timer ff_hazard_rng 100
execute store result score #jolly_curse_effect_roll ff_hazard_rng run random value 1..100
execute if score #jolly_curse_effect_roll ff_hazard_rng matches 71..80 as @a[predicate=fossil_frights:player/team/guard] at @s run particle minecraft:elder_guardian ~ ~ ~ 0.35 0.5 0.35 0 1 force @s
execute if score #jolly_curse_effect_roll ff_hazard_rng matches 81..85 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:levitation 3 2 true
execute if score #jolly_curse_effect_roll ff_hazard_rng matches 86..90 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:slowness 3 1 true
execute if score #jolly_curse_effect_roll ff_hazard_rng matches 91..95 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:slow_falling 6 2 true
execute if score #jolly_curse_effect_roll ff_hazard_rng matches 96..100 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:darkness 4 0 false
