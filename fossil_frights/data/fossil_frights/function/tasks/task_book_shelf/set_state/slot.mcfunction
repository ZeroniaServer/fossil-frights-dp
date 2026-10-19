$data modify storage fossil_frights:task_book_shelf custom_model_data.strings[$(index)] set from storage fossil_frights:tasks tasks[{id:"$(id)"}].difficulty
$execute if data storage fossil_frights:tasks tasks[{id:"$(id)",has_custom_icon:true}] run data modify storage fossil_frights:task_book_shelf custom_model_data.strings[$(index)] set value "custom/$(id)"
