kill @e[type=minecraft:marker,tag=ff_chorus_cola_editor]
execute unless entity @e[limit=1,type=minecraft:text_display,tag=ff_chorus_cola_indicator] run return run tellraw @s {color:"red",text:"No location editors to save"}
function fossil_frights:items/chorus_cola/editor/reset_all
execute as @e[type=minecraft:text_display,tag=ff_chorus_cola_indicator] run function fossil_frights:items/chorus_cola/editor/save_all/selected_marker
return 1
