$scoreboard players operation #naughty_or_nice_present_pick ff_task_state = #naughty_or_nice_present_$(slot) ff_task_state
execute if score #naughty_or_nice_present_pick ff_task_state matches 1 run data modify storage fossil_frights:naughty_or_nice present.model set value "fossil_frights:display/frightmas/presents/present_gold"
execute if score #naughty_or_nice_present_pick ff_task_state matches 2 run data modify storage fossil_frights:naughty_or_nice present.model set value "fossil_frights:display/frightmas/presents/present_lime"
execute if score #naughty_or_nice_present_pick ff_task_state matches 3 run data modify storage fossil_frights:naughty_or_nice present.model set value "fossil_frights:display/frightmas/presents/present_aqua"
execute if score #naughty_or_nice_present_pick ff_task_state matches 4 run data modify storage fossil_frights:naughty_or_nice present.model set value "fossil_frights:display/frightmas/presents/present_dark_red"
execute if score #naughty_or_nice_present_pick ff_task_state matches 5 run data modify storage fossil_frights:naughty_or_nice present.model set value "fossil_frights:display/frightmas/presents/present_red"
execute if score #naughty_or_nice_present_pick ff_task_state matches 6 run data modify storage fossil_frights:naughty_or_nice present.model set value "fossil_frights:display/frightmas/presents/present_dark_green"
$data modify storage fossil_frights:summon_item entity_data set value $(nbt)
data modify storage fossil_frights:summon_item entity_data.Item set value {id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air","minecraft:custom_data":{ff_summon_item_delete:true}}}
data modify storage fossil_frights:summon_item entity_data.Tags append value "ff_naughty_or_nice_present_spawn"
function fossil_frights:items/util/summon_item_macro with storage fossil_frights:summon_item
loot replace entity @e[type=minecraft:item,tag=ff_naughty_or_nice_present_spawn,distance=..0.1,limit=1] contents loot fossil_frights:items/tasks/naughty_or_nice/present
execute as @e[type=minecraft:item,tag=ff_naughty_or_nice_present_spawn,distance=..0.1,limit=1] if items entity @s contents *[custom_data={ff_summon_item_delete:true}] run kill @s
execute as @e[type=minecraft:item,tag=ff_naughty_or_nice_present_spawn,distance=..0.1,limit=1] run function fossil_frights:tasks/final/naughty_or_nice/office/set_present_model with storage fossil_frights:naughty_or_nice present
tag @e[type=minecraft:item,tag=ff_naughty_or_nice_present_spawn,distance=..0.1,limit=1] remove ff_naughty_or_nice_present_spawn
data remove storage fossil_frights:summon_item entity_data
