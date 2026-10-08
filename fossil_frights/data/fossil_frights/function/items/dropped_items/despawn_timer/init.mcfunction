execute unless items entity @s contents *[custom_data~{itemID:"lady_bug"}] store result score @s ff_dropped_item_despawn_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",400]}
execute if items entity @s contents *[custom_data~{itemID:"lady_bug"}] store result score @s ff_dropped_item_despawn_timestamp run data get entity @s Item.components.minecraft:custom_data.ff_lady_bug.despawn_timestamp

summon minecraft:text_display ~ ~ ~ {Tags:["ff_dropped_heist_loot_text","ff_dropped_heist_loot_text_new"],billboard:"center",text:"",background:0,shadow:true,width:1,height:1.5}
data modify entity @e[limit=1,distance=..0.01,type=minecraft:text_display,tag=ff_dropped_heist_loot_text_new] transformation.translation[1] set compute default float fossil_frights:dropped_items/despawn_timer_height
ride @e[limit=1,distance=..0.01,type=minecraft:text_display,tag=ff_dropped_heist_loot_text_new] mount @s
execute on passengers run tag @s remove ff_dropped_heist_loot_text_new
schedule function fossil_frights:items/dropped_items/despawn_timer/tick 1t append
