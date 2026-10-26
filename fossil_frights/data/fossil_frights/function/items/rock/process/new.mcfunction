tag @s add ff_rock.checked
execute if entity @s[type=minecraft:item] unless items entity @s contents *[custom_data~{itemID:"rock"}] run return 0
data modify storage fossil_frights:rock entity_data set from entity @s {}
execute if entity @s[type=minecraft:snowball] unless data storage fossil_frights:rock entity_data.Item.components.minecraft:custom_data{itemID:"rock"} run return 0

execute if entity @s[type=minecraft:item] run data modify storage fossil_frights:rock thrower set from storage fossil_frights:rock entity_data.Thrower
execute if entity @s[type=minecraft:snowball] run data modify storage fossil_frights:rock thrower set from storage fossil_frights:rock entity_data.Owner

kill @s

data modify storage fossil_frights:rock velocity set from storage fossil_frights:rock entity_data.Motion
function fossil_frights:items/rock/summon with storage fossil_frights:rock {}

data remove storage fossil_frights:rock thrower
data remove storage fossil_frights:rock entity_data
data remove storage fossil_frights:rock velocity
