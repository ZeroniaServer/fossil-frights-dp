execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
tag @s add ff_snowstorm_active_guard
execute at @s run particle entity_effect{color:0xFBFEFDFF} ~ ~1 ~ force @a[predicate=fossil_frights:player/team/guard]
