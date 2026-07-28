tellraw @a {color:"gray",italic:true,text:"Chorus Cola teleport locations saved"}
kill @e[type=minecraft:marker,tag=ff_chorus_cola_editor]
function fossil_frights:items/chorus_cola/editor/reset_all
execute as @e[type=minecraft:text_display,tag=ff_chorus_cola_indicator] run function fossil_frights:items/chorus_cola/editor/save_all/selected_marker
return 1
