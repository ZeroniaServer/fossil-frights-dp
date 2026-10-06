execute unless entity @s[type=minecraft:mannequin] run return 0
data remove storage fossil_frights:nbt data
data modify storage fossil_frights:nbt data.entity_data.profile set from entity @s profile
execute unless data storage fossil_frights:nbt data.entity_data.profile.texture run return run data remove storage fossil_frights:nbt data

data remove storage fossil_frights:nbt data.slice
data modify storage fossil_frights:nbt data.slice set string storage fossil_frights:nbt data.entity_data.profile.texture 0 15
execute unless data storage fossil_frights:nbt data{slice:"fossil-frights:"} run return run data remove storage fossil_frights:nbt data

data modify storage fossil_frights:nbt data.path set string storage fossil_frights:nbt data.entity_data.profile.texture 15
function fossil_frights:admin/temporary/update_mannequin_texture_namespace_macro with storage fossil_frights:nbt data

data remove storage fossil_frights:nbt data
return 2
