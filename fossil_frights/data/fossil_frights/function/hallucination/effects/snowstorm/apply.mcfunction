execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
tag @s add ff_snowstorm_active_guard
scoreboard players reset @s ff_snowstorm_clear_tick
scoreboard players reset @s ff_snowstorm_deactivate_tick
execute at @s run particle entity_effect{color:0x007BFDFF} ~ ~1 ~ 0 0 0 0 1 force @s
scoreboard players add @s ff_snowstorm_tick 0