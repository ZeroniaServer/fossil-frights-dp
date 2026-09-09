data modify storage fossil_frights:door door_data set value {hinge:"left",facing:"north",model_type:"weathered_copper",sound_type:"copper"}
data modify storage fossil_frights:door door_data merge from entity @s data.ff_door

execute if block ~ ~ ~ #doors[hinge=right] run data modify storage fossil_frights:door door_data.hinge set value "right"
execute if block ~ ~ ~ #doors[facing=east] run data modify storage fossil_frights:door door_data.facing set value "east"
execute if block ~ ~ ~ #doors[facing=south] run data modify storage fossil_frights:door door_data.facing set value "south"
execute if block ~ ~ ~ #doors[facing=west] run data modify storage fossil_frights:door door_data.facing set value "west"
execute if data storage fossil_frights:door door_data{facing:"north",hinge:"left"} run data modify storage fossil_frights:door door_data merge value {closed_angle: 0, open_angle: -90, anchor_x: 0.09375, anchor_z: 0.90625}
execute if data storage fossil_frights:door door_data{facing:"north",hinge:"right"} run data modify storage fossil_frights:door door_data merge value {closed_angle: 0, open_angle: 90, anchor_x: 0.90625, anchor_z: 0.90625}
execute if data storage fossil_frights:door door_data{facing:"east",hinge:"left"} run data modify storage fossil_frights:door door_data merge value {closed_angle: 90, open_angle: 0, anchor_x: 0.09375, anchor_z: 0.09375}
execute if data storage fossil_frights:door door_data{facing:"east",hinge:"right"} run data modify storage fossil_frights:door door_data merge value {closed_angle: 90, open_angle: 180, anchor_x: 0.09375, anchor_z: 0.90625}
execute if data storage fossil_frights:door door_data{facing:"south",hinge:"left"} run data modify storage fossil_frights:door door_data merge value {closed_angle: 180, open_angle: 90, anchor_x: 0.90625, anchor_z: 0.09375}
execute if data storage fossil_frights:door door_data{facing:"south",hinge:"right"} run data modify storage fossil_frights:door door_data merge value {closed_angle: 180, open_angle: -90, anchor_x: 0.09375, anchor_z: 0.09375}
execute if data storage fossil_frights:door door_data{facing:"west",hinge:"left"} run data modify storage fossil_frights:door door_data merge value {closed_angle: -90, open_angle: 180, anchor_x: 0.90625, anchor_z: 0.90625}
execute if data storage fossil_frights:door door_data{facing:"west",hinge:"right"} run data modify storage fossil_frights:door door_data merge value {closed_angle: -90, open_angle: 0, anchor_x: 0.90625, anchor_z: 0.09375}
data modify entity @s data.ff_door set from storage fossil_frights:door door_data
function fossil_frights:interactions/door/reset/set_position with storage fossil_frights:door door_data

function fossil_frights:interactions/door/reset/set_item_model with storage fossil_frights:door door_data
execute if data storage fossil_frights:door door_data{hinge:"left"} run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:custom_model_data":{flags:[false]}}}
execute if data storage fossil_frights:door door_data{hinge:"right"} run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:custom_model_data":{flags:[true]}}}

execute align xyz as @e[type=minecraft:interaction,dx=0,tag=ff_door.interaction] positioned ~0.5 ~0.5 ~0.5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{max:0.5},y:{max:0.5},z:{max:0.5}}}} run kill @s
summon minecraft:interaction ~ ~ ~ {Tags:["ff_door.interaction","ff_door.interaction.0"],width:0.252,height:2.001,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["ff_door.interaction","ff_door.interaction.1"],width:0.252,height:2.001,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["ff_door.interaction","ff_door.interaction.2"],width:0.252,height:2.001,response:true}
summon minecraft:interaction ~ ~ ~ {Tags:["ff_door.interaction","ff_door.interaction.3"],width:0.252,height:2.001,response:true}

function fossil_frights:interactions/door/state/closed with storage fossil_frights:door door_data
data remove storage fossil_frights:door door_data

data merge entity @s {teleport_duration:2,width:2,height:2}
execute on passengers run data merge entity @s[type=text_display] {width:2,height:2,teleport_duration:2}
