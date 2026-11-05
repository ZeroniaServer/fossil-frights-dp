data modify storage fossil_frights:credits entity_data set value {Tags:["ff_credits","ff_credits_scroll"],width:9,height:0.5,teleport_duration:1,Rotation:[-90,0],text:"",line_width:300,background:0,shadow:true,brightness:{block:15,sky:15}}
data modify storage fossil_frights:credits entity_data.text set from storage fossil_frights:credits credits[0].lines[0]
execute unless data storage fossil_frights:credits entity_data{text:""} summon minecraft:text_display run data modify entity @s {} merge from storage fossil_frights:credits entity_data
data remove storage fossil_frights:credits entity_data

data remove storage fossil_frights:credits credits[0].lines[0]
execute if data storage fossil_frights:credits credits[0].lines[0] positioned ~ ~-0.5 ~ run return run function fossil_frights:animations/credits/summon_lines/type/lines

data remove storage fossil_frights:credits credits[0]
execute positioned ~ ~-0.5 ~ run return run function fossil_frights:animations/credits/summon_lines/loop
