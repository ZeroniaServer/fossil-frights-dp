data modify storage fossil_frights:chorus_cola calc.marker_entry set value {data:{}}
data modify storage fossil_frights:chorus_cola calc.entity_data set from entity @s {}
data modify storage fossil_frights:chorus_cola calc.marker_entry.data.x set from storage fossil_frights:chorus_cola calc.entity_data.Pos[0]
data modify storage fossil_frights:chorus_cola calc.marker_entry.data.y set from storage fossil_frights:chorus_cola calc.entity_data.Pos[1]
data modify storage fossil_frights:chorus_cola calc.marker_entry.data.z set from storage fossil_frights:chorus_cola calc.entity_data.Pos[2]
data modify storage fossil_frights:chorus_cola calc.marker_entry.data.tag set from storage fossil_frights:chorus_cola calc.entity_data.data.ff_chorus_cola_editor.tag
data modify storage fossil_frights:chorus_cola calc.chunk set value [I;0,0]
execute store result storage fossil_frights:chorus_cola calc.chunk[0] int 1 run data get storage fossil_frights:chorus_cola calc.marker_entry.data.x 0.0625
execute store result storage fossil_frights:chorus_cola calc.chunk[1] int 1 run data get storage fossil_frights:chorus_cola calc.marker_entry.data.z 0.0625
function fossil_frights:items/chorus_cola/save_all/append_marker_entry with storage fossil_frights:chorus_cola calc
kill @s
