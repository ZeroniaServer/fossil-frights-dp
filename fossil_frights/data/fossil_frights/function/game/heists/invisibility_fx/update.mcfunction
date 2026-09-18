execute if predicate fossil_frights:entity/effects/invisibility run return run function fossil_frights:game/heists/invisibility_fx/gained
execute unless predicate fossil_frights:entity/effects/invisibility run return run function fossil_frights:game/heists/invisibility_fx/lost
advancement revoke @s only fossil_frights:misc/update_invisibility_fx
