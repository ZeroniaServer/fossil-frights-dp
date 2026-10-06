execute unless entity @s[type=minecraft:text_display] run return 0
data remove storage fossil_frights:nbt data
data modify storage fossil_frights:nbt data.font set from entity @s text.font
execute unless data storage fossil_frights:nbt data.font run data modify storage fossil_frights:nbt data.font set from entity @s text.extra[].font
execute unless data storage fossil_frights:nbt data.font run return 0

data remove storage fossil_frights:nbt data.slice
data modify storage fossil_frights:nbt data.slice set string storage fossil_frights:nbt data.font 0 15
execute unless data storage fossil_frights:nbt data{slice:"fossil-frights:"} run return 0

data modify storage fossil_frights:nbt data.path set string storage fossil_frights:nbt data.font 15
function fossil_frights:admin/temporary/update_text_display_font_namespace_macro with storage fossil_frights:nbt data

data remove storage fossil_frights:nbt data
return 2
