execute unless entity @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key:1b}}}}] unless entity @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}}] run return 0
kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key:1b}}}}]
kill @e[type=minecraft:item,distance=..8,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}}]
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key:1b}]
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key_cooldown:1b}]
execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key ff_key_cd_cfg
execute if score @s ff_key_cooldown matches 1.. run function fossil_frights:key/give_cooldown with storage fossil_frights:key
execute unless score @s ff_key_cooldown matches 1.. run function fossil_frights:key/give_active with storage fossil_frights:key
