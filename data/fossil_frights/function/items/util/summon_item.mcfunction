$data modify storage fossil_frights:summon_item entity_data set value $(nbt)
data modify storage fossil_frights:summon_item entity_data.Item set value {id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air","minecraft:custom_data":{ff_summon_item_delete:true}}}
data modify storage fossil_frights:summon_item entity_data.Tags append value "ff_summon_item_new"
function fossil_frights:items/util/summon_item_macro with storage fossil_frights:summon_item
$loot replace entity @e[limit=1,dx=0,type=item,tag=ff_summon_item_new] contents loot $(loot_table)
execute as @e[limit=1,dx=0,type=item,tag=ff_summon_item_new] if items entity @s contents *[custom_data={ff_summon_item_delete:true}] run kill @s
tag @e[limit=1,dx=0,type=item,tag=ff_summon_item_new] remove ff_summon_item_new
data remove storage fossil_frights:summon_item entity_data
