loot replace block 0 0 0 container.0 1 loot fossil_frights:display/start_room/task_book_shelf

execute if items block 18 71 29 container.0 * run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",flags:{values:[true],mode:"replace_section",offset:0,size:1}}
execute if items block 18 71 29 container.1 * run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",flags:{values:[true],mode:"replace_section",offset:1,size:1}}
execute if items block 18 71 29 container.2 * run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",flags:{values:[true],mode:"replace_section",offset:2,size:1}}
execute if items block 18 71 29 container.3 * run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",flags:{values:[true],mode:"replace_section",offset:3,size:1}}
execute if items block 18 71 29 container.4 * run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",flags:{values:[true],mode:"replace_section",offset:4,size:1}}
execute if items block 18 71 29 container.5 * run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",flags:{values:[true],mode:"replace_section",offset:5,size:1}}

execute if items block 18 71 29 container.0 *[custom_data~{ff_task_book_difficulty:"easy"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["easy"],mode:"replace_section",offset:0,size:1}}
execute if items block 18 71 29 container.1 *[custom_data~{ff_task_book_difficulty:"easy"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["easy"],mode:"replace_section",offset:1,size:1}}
execute if items block 18 71 29 container.2 *[custom_data~{ff_task_book_difficulty:"easy"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["easy"],mode:"replace_section",offset:2,size:1}}
execute if items block 18 71 29 container.3 *[custom_data~{ff_task_book_difficulty:"easy"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["easy"],mode:"replace_section",offset:3,size:1}}
execute if items block 18 71 29 container.4 *[custom_data~{ff_task_book_difficulty:"easy"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["easy"],mode:"replace_section",offset:4,size:1}}
execute if items block 18 71 29 container.5 *[custom_data~{ff_task_book_difficulty:"easy"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["easy"],mode:"replace_section",offset:5,size:1}}

execute if items block 18 71 29 container.0 *[custom_data~{ff_task_book_difficulty:"medium"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["medium"],mode:"replace_section",offset:0,size:1}}
execute if items block 18 71 29 container.1 *[custom_data~{ff_task_book_difficulty:"medium"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["medium"],mode:"replace_section",offset:1,size:1}}
execute if items block 18 71 29 container.2 *[custom_data~{ff_task_book_difficulty:"medium"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["medium"],mode:"replace_section",offset:2,size:1}}
execute if items block 18 71 29 container.3 *[custom_data~{ff_task_book_difficulty:"medium"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["medium"],mode:"replace_section",offset:3,size:1}}
execute if items block 18 71 29 container.4 *[custom_data~{ff_task_book_difficulty:"medium"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["medium"],mode:"replace_section",offset:4,size:1}}
execute if items block 18 71 29 container.5 *[custom_data~{ff_task_book_difficulty:"medium"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["medium"],mode:"replace_section",offset:5,size:1}}

execute if items block 18 71 29 container.0 *[custom_data~{ff_task_book_difficulty:"hard"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["hard"],mode:"replace_section",offset:0,size:1}}
execute if items block 18 71 29 container.1 *[custom_data~{ff_task_book_difficulty:"hard"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["hard"],mode:"replace_section",offset:1,size:1}}
execute if items block 18 71 29 container.2 *[custom_data~{ff_task_book_difficulty:"hard"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["hard"],mode:"replace_section",offset:2,size:1}}
execute if items block 18 71 29 container.3 *[custom_data~{ff_task_book_difficulty:"hard"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["hard"],mode:"replace_section",offset:3,size:1}}
execute if items block 18 71 29 container.4 *[custom_data~{ff_task_book_difficulty:"hard"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["hard"],mode:"replace_section",offset:4,size:1}}
execute if items block 18 71 29 container.5 *[custom_data~{ff_task_book_difficulty:"hard"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["hard"],mode:"replace_section",offset:5,size:1}}

execute if items block 18 71 29 container.0 *[custom_data~{ff_task_book_difficulty:"final"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["final"],mode:"replace_section",offset:0,size:1}}
execute if items block 18 71 29 container.1 *[custom_data~{ff_task_book_difficulty:"final"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["final"],mode:"replace_section",offset:1,size:1}}
execute if items block 18 71 29 container.2 *[custom_data~{ff_task_book_difficulty:"final"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["final"],mode:"replace_section",offset:2,size:1}}
execute if items block 18 71 29 container.3 *[custom_data~{ff_task_book_difficulty:"final"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["final"],mode:"replace_section",offset:3,size:1}}
execute if items block 18 71 29 container.4 *[custom_data~{ff_task_book_difficulty:"final"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["final"],mode:"replace_section",offset:4,size:1}}
execute if items block 18 71 29 container.5 *[custom_data~{ff_task_book_difficulty:"final"}] run item modify block 0 0 0 container.0 {type:"minecraft:set_custom_model_data",strings:{values:["final"],mode:"replace_section",offset:5,size:1}}

item replace entity @s contents from block 0 0 0 container.0
