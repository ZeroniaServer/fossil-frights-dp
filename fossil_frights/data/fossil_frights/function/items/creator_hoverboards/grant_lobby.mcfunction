clear @s *[minecraft:custom_data~{itemID:"hoverboard"}]

loot replace block 0 0 0 container.0 27 loot fossil_frights:empty
loot replace block 0 0 0 container.0 1 loot fossil_frights:items/creators/hoverboard
data modify block 0 0 0 Items[0].components."minecraft:use_remainder".components."minecraft:custom_model_data".colors[0] set from block 0 0 0 Items[0].components."minecraft:custom_model_data".colors[0]
loot give @s mine 0 0 0 stone[custom_data={drop_contents:true}]
