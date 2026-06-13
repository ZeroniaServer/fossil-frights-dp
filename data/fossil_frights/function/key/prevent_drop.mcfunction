execute unless entity @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/key] unless entity @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/key_cooldown] unless entity @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/key_disabled] run return 0
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/key]
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/key_cooldown]
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/key_disabled]
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key_cooldown:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key_disabled:1b}]
function fossil_frights:key/give
