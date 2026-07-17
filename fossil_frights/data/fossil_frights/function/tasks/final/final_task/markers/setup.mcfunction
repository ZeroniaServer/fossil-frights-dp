function fossil_frights:tasks/final/final_task/markers/cleanup
scoreboard players set $final_task_marker_flash ff_task_state 0
summon minecraft:text_display -23 108 64 {Tags:["ff_final_task_marker","ff_final_centrifuge_marker"],text:[{"text":"!","color":"white","bold":true,"italic":false}],billboard:"fixed",Rotation:[180,0],background:0,brightness:{sky:15,block:15},alignment:"center",view_range:24,transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
summon minecraft:text_display -25 108.0 60 {Tags:["ff_final_task_marker","ff_final_dna_marker"],text:[{"text":"!","color":"yellow","bold":true,"italic":false}],billboard:"fixed",Rotation:[270,0],background:0,brightness:{sky:15,block:15},alignment:"center",view_range:24,transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
summon minecraft:interaction -22.5 106.5 64.0 {width:1.5,height:1.75,response:true,Tags:["ff_final_task_click","ff_final_centrifuge_click"]}
summon minecraft:interaction -24.5 106.0 60.5 {width:1.25,height:1.75,response:true,Tags:["ff_final_task_click","ff_final_dna_analyzer_click"]}
