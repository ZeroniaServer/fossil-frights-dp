execute unless entity @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key:1b}}}}] unless entity @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}}] unless entity @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_disabled:1b}}}}] run return 0
kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key:1b}}}}]
kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}}]
kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_disabled:1b}}}}]
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key_cooldown:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key_disabled:1b}]
function fossil_frights:key/give
