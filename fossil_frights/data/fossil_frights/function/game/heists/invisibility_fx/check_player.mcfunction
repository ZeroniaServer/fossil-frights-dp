execute unless entity @s[team=ff_thief] run return 0
execute if predicate fossil_frights:entity/effects/invisibility unless entity @s[tag=ff_invisibility_fx] run return run function fossil_frights:game/heists/invisibility_fx/gained
execute unless predicate fossil_frights:entity/effects/invisibility if entity @s[tag=ff_invisibility_fx] run return run function fossil_frights:game/heists/invisibility_fx/lost
