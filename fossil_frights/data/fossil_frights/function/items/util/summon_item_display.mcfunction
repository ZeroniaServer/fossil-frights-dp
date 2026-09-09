$data modify storage fossil_frights:summon_item_display entity_data set value $(nbt)
data modify storage fossil_frights:summon_item_display entity_data.Item set value {id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air","minecraft:custom_data":{ff_summon_item_display_delete:true}}}
data modify storage fossil_frights:summon_item_display entity_data.Tags append value "ff_summon_item_display_new"
function fossil_frights:items/util/summon_item_display_macro with storage fossil_frights:summon_item_display
$loot replace entity @e[limit=1,type=minecraft:item_display,tag=ff_summon_item_display_new] contents loot $(loot_table)
tp @e[limit=1,type=minecraft:item_display,tag=ff_summon_item_display_new] ~ ~ ~ ~ ~
execute as @e[limit=1,type=minecraft:item_display,tag=ff_summon_item_display_new] if items entity @s contents *[custom_data={ff_summon_item_display_delete:true}] run kill @s
tag @e[limit=1,type=minecraft:item_display,tag=ff_summon_item_display_new] remove ff_summon_item_display_new
data remove storage fossil_frights:summon_item_display entity_data
