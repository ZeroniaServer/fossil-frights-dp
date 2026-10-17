function fossil_frights:player/set_team/none
execute unless entity @s[predicate=fossil_frights:player/team/dev_mode] run function fossil_frights:player/set_team/lobby
