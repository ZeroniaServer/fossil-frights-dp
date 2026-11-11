scoreboard players add #freezing_floods_timer ff_hallucination 1
execute if score #freezing_floods_timer ff_hallucination matches 20.. as @a[predicate=fossil_frights:player/team/guard,predicate=fossil_frights:entity/touching_water_fluid] run effect give @s minecraft:wither 2 0 true
execute if score #freezing_floods_timer ff_hallucination matches 20.. run scoreboard players set #freezing_floods_timer ff_hallucination 0
