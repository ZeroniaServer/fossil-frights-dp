kill @e[type=minecraft:text_display,tag=ff_chorus_cola_editor]
data modify storage fossil_frights:chorus_cola calc.passengers set value []
data modify storage fossil_frights:chorus_cola calc.passengers append from storage fossil_frights:chorus_cola valid_teleport_locations.chunks[].markers[]
execute unless data storage fossil_frights:chorus_cola calc.passengers[0] run return 1
data modify storage fossil_frights:chorus_cola calc.passengers[] merge value {id:"minecraft:text_display",view_range:0.25,Rotation:[0,-90],transformation:{right_rotation:[0,0,0,1],scale:[5,5,5],left_rotation:[0,0,0,1],translation:[-0.125,-0.75,0]},text:{atlas:"minecraft:blocks",sprite:"minecraft:block/white_stained_glass",color:"#00A757"}}
function fossil_frights:items/chorus_cola/load_all/summon_batch with storage fossil_frights:chorus_cola calc
execute positioned 0 0 0 as @e[limit=1,distance=..0.01,type=minecraft:item_display,tag=ff_chorus_cola_editor_batch] run function fossil_frights:items/chorus_cola/load_all/selected_batch
return 1
