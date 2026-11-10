execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
tag @s add ff_snowstorm_active_guard
posteffect remove @s fossil_frights:snow_storm/deactivate
posteffect add @s fossil_frights:snow_storm/activate
