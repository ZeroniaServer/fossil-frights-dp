data remove storage fossil_frights:bunny_slippers color
execute as @p[distance=0..,tag=ff_item_entity_pickup.target_candidate] run data modify storage fossil_frights:bunny_slippers color set compute default integer fossil_frights:items/bunny_slippers/color

item modify entity @s contents {type:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}
data modify entity @s Item.components.minecraft:dyed_color set from storage fossil_frights:bunny_slippers color
