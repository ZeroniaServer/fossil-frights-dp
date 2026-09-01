tag @s add ff_door.sign_text
data merge entity @s {teleport_duration:2,background:0,transformation:{scale:[0.45,0.45,1],translation:[0.40625,1.3,0.2]}}
execute if data storage fossil_frights:door input_door_data{hinge:"right"} run data merge entity @s {transformation:{translation:[-0.40625,1.3,0.2]}}
ride @s mount @e[limit=1,type=minecraft:item_display,tag=ff_door.editor_target]
data modify entity @s text set from storage fossil_frights:door text_data
execute unless data entity @s {text:""} run return 1
data remove storage fossil_frights:door text_data.extra[].color
data modify entity @s text set from storage fossil_frights:door text_data
