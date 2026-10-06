execute unless entity @s[type=minecraft:item_display] run return 0
data remove storage fossil_frights:nbt data
data modify storage fossil_frights:nbt data.entity_data.item.components.minecraft:item_model set from entity @s item.components.minecraft:item_model
execute unless data storage fossil_frights:nbt data.entity_data.item.components.minecraft:item_model run return run data remove storage fossil_frights:nbt data

data remove storage fossil_frights:nbt data.slice
data modify storage fossil_frights:nbt data.slice set string storage fossil_frights:nbt data.entity_data.item.components.minecraft:item_model 0 15
execute unless data storage fossil_frights:nbt data{slice:"fossil-frights:"} run return run data remove storage fossil_frights:nbt data

data modify storage fossil_frights:nbt data.path set string storage fossil_frights:nbt data.entity_data.item.components.minecraft:item_model 15
function fossil_frights:admin/temporary/update_item_display_model_namespace_macro with storage fossil_frights:nbt data

data remove storage fossil_frights:nbt data
return 2
