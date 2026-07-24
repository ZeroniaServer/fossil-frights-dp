execute unless entity @e[limit=1,type=minecraft:text_display,tag=ff_chorus_cola_editor] run return run tellraw @s {color:"red",text:"No location editors to save"}
function fossil_frights:items/chorus_cola/reset_all
execute as @e[type=minecraft:text_display,tag=ff_chorus_cola_editor] run function fossil_frights:items/chorus_cola/save_all/selected_marker
return 1
