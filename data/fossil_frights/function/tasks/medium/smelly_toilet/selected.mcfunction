execute if score $smelly_toilet_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $smelly_toilet_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/smelly_toilet/selected_book
execute if score $smelly_toilet_sel ff_task_state matches 0 run setblock 24 81 8 minecraft:pale_oak_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},components:{},front_text:{color:"black",has_glowing_text:0b,messages:["","OUT OF ORDER","(Too Stinky)",""]},is_waxed:0b}
execute if score $smelly_toilet_sel ff_task_state matches 0 as @e[type=item_display,tag=ff_task_smelly_toilet] run data merge entity @s {view_range:1}
scoreboard players set $smelly_toilet_sel ff_task_state 1
scoreboard players set $smelly_toilet_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
