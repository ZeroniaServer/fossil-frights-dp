# Roll a small player debuff every 5 seconds while curse is active.
scoreboard players set #curse_effect_timer ff_hazard_rng 100
execute store result score #curse_effect_roll ff_hazard_rng run random value 1..100
execute if score #curse_effect_roll ff_hazard_rng matches 1..6 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:levitation 5 0 true
execute if score #curse_effect_roll ff_hazard_rng matches 7..10 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:levitation 2 4 true
execute if score #curse_effect_roll ff_hazard_rng matches 11..18 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:darkness 4 0 false
execute if score #curse_effect_roll ff_hazard_rng matches 19..22 run effect give @a[predicate=fossil_frights:player/team/guard] minecraft:blindness 5 0 false
execute if score #curse_effect_roll ff_hazard_rng matches 23..28 as @a[predicate=fossil_frights:player/team/guard] at @s run particle minecraft:elder_guardian ~ ~ ~ 0.35 0.5 0.35 0 1 force @s
