loot replace block 0 0 0 container.0 loot fossil_frights:items/other/museum_map
$item modify block 0 0 0 container.0 {type:"minecraft:set_components",components:{"minecraft:item_name":{color:"gold",translate:"ff.museum_map.$(name)"},"minecraft:custom_model_data":{strings:["$(name)"]}}}
item override entity @s fossil_frights:player/filtered/museum_map from block 0 0 0 container.0
