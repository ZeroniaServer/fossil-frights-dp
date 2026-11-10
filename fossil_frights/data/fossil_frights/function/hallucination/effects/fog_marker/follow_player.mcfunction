execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
function fossil_frights:entity/match/active
execute unless entity @e[type=minecraft:item_display,tag=fog_marker,tag=ff_hallucination_fog_marker,predicate=fossil_frights:entity/match/active,limit=1] run function fossil_frights:hallucination/effects/fog_marker/summon_player_marker
execute at @s positioned ~ 0 ~ run tp @e[type=minecraft:item_display,tag=fog_marker,tag=ff_hallucination_fog_marker,predicate=fossil_frights:entity/match/active,limit=1] ~ ~ ~
