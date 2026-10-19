item replace block 0 0 0 container.1 with minecraft:stone[container=[]]
item override block 0 0 0 {type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",slots:"container.1"},component:"minecraft:container"} from block 18 71 29 container.*
$execute if items block 0 0 0 container.1 *[container=$(cached_contents)] run return 0
data modify storage fossil_frights:task_book_shelf cached_contents set from block 0 0 0 Items[{Slot:1b}].components.minecraft:container

loot replace block 0 0 0 container.0 1 loot fossil_frights:display/start_room/task_book_shelf

data modify storage fossil_frights:task_book_shelf custom_model_data set value {flags:[false,false,false,false,false,false],strings:["","","","","",""]}

execute if items block 18 71 29 container.0 * run data modify storage fossil_frights:task_book_shelf custom_model_data.flags[0] set value true
execute if items block 18 71 29 container.0 * run data modify storage fossil_frights:task_book_shelf slot_data set value {index:0,id:"",parent_id:""}
execute if items block 18 71 29 container.0 * run data modify storage fossil_frights:task_book_shelf slot_data merge from storage fossil_frights:task_book_shelf cached_contents[{slot:0}].item.components.minecraft:custom_data.ff_task_book
execute if items block 18 71 29 container.0 * run function fossil_frights:tasks/task_book_shelf/set_state/slot with storage fossil_frights:task_book_shelf slot_data

execute if items block 18 71 29 container.1 * run data modify storage fossil_frights:task_book_shelf custom_model_data.flags[1] set value true
execute if items block 18 71 29 container.1 * run data modify storage fossil_frights:task_book_shelf slot_data set value {index:1,id:"",parent_id:""}
execute if items block 18 71 29 container.1 * run data modify storage fossil_frights:task_book_shelf slot_data merge from storage fossil_frights:task_book_shelf cached_contents[{slot:1}].item.components.minecraft:custom_data.ff_task_book
execute if items block 18 71 29 container.1 * run function fossil_frights:tasks/task_book_shelf/set_state/slot with storage fossil_frights:task_book_shelf slot_data

execute if items block 18 71 29 container.2 * run data modify storage fossil_frights:task_book_shelf custom_model_data.flags[2] set value true
execute if items block 18 71 29 container.2 * run data modify storage fossil_frights:task_book_shelf slot_data set value {index:2,id:"",parent_id:""}
execute if items block 18 71 29 container.2 * run data modify storage fossil_frights:task_book_shelf slot_data merge from storage fossil_frights:task_book_shelf cached_contents[{slot:2}].item.components.minecraft:custom_data.ff_task_book
execute if items block 18 71 29 container.2 * run function fossil_frights:tasks/task_book_shelf/set_state/slot with storage fossil_frights:task_book_shelf slot_data

execute if items block 18 71 29 container.3 * run data modify storage fossil_frights:task_book_shelf custom_model_data.flags[3] set value true
execute if items block 18 71 29 container.3 * run data modify storage fossil_frights:task_book_shelf slot_data set value {index:3,id:"",parent_id:""}
execute if items block 18 71 29 container.3 * run data modify storage fossil_frights:task_book_shelf slot_data merge from storage fossil_frights:task_book_shelf cached_contents[{slot:3}].item.components.minecraft:custom_data.ff_task_book
execute if items block 18 71 29 container.3 * run function fossil_frights:tasks/task_book_shelf/set_state/slot with storage fossil_frights:task_book_shelf slot_data

execute if items block 18 71 29 container.4 * run data modify storage fossil_frights:task_book_shelf custom_model_data.flags[4] set value true
execute if items block 18 71 29 container.4 * run data modify storage fossil_frights:task_book_shelf slot_data set value {index:4,id:"",parent_id:""}
execute if items block 18 71 29 container.4 * run data modify storage fossil_frights:task_book_shelf slot_data merge from storage fossil_frights:task_book_shelf cached_contents[{slot:4}].item.components.minecraft:custom_data.ff_task_book
execute if items block 18 71 29 container.4 * run function fossil_frights:tasks/task_book_shelf/set_state/slot with storage fossil_frights:task_book_shelf slot_data

execute if items block 18 71 29 container.5 * run data modify storage fossil_frights:task_book_shelf custom_model_data.flags[5] set value true
execute if items block 18 71 29 container.5 * run data modify storage fossil_frights:task_book_shelf slot_data set value {index:5,id:"",parent_id:""}
execute if items block 18 71 29 container.5 * run data modify storage fossil_frights:task_book_shelf slot_data merge from storage fossil_frights:task_book_shelf cached_contents[{slot:5}].item.components.minecraft:custom_data.ff_task_book
execute if items block 18 71 29 container.5 * run function fossil_frights:tasks/task_book_shelf/set_state/slot with storage fossil_frights:task_book_shelf slot_data

function fossil_frights:tasks/task_book_shelf/set_state/set_custom_model_data with storage fossil_frights:task_book_shelf
item replace entity @s contents from block 0 0 0 container.0
