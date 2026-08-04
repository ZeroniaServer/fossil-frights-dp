execute unless entity @s[tag=ff_pteranadon_jump_reduced] run return 0
execute unless predicate fossil_frights:entity/effects/luck run tag @s remove ff_pteranadon_jump_reduced
execute unless predicate fossil_frights:entity/effects/luck run return 0
execute store result storage fossil_frights:jump_boost duration int 0.05 run data get entity @s active_effects[{id:"minecraft:luck"}].duration
execute if data storage fossil_frights:jump_boost {duration:0} run data modify storage fossil_frights:jump_boost duration set value 1
function fossil_frights:game/heists/jump_boost/restore_macro with storage fossil_frights:jump_boost
tag @s remove ff_pteranadon_jump_reduced
