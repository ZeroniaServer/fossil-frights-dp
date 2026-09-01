data modify storage fossil_frights:door editor_dialog set value {\
  type: "minecraft:confirmation",\
  title: "Door Editor",\
  body: {\
    type: "minecraft:plain_message",\
    contents: {\
      color: "red",\
      text: "[Click here to remove door]",\
      click_event: {\
        action: "run_command",\
        command: ""\
      }\
    }\
  },\
  inputs: [\
    {type: "minecraft:single_option",key:"uuid",label:"",label_visible:0b,options:[{id:""}]},\
    {type:"minecraft:text",key:"model_type",label:"model_type",initial:"weathered_copper",max_length:64},\
    {type:"minecraft:single_option",key:"sound_type",label:"sound_type",options:[{id:"wooden"},{id:"bamboo_wood"},{id:"cherry_wood"},{id:"copper"},{id:"iron"},{id:"nether_wood"}]},\
    {type:"minecraft:single_option",key:"facing",label:"facing",options:[{id:"north"},{id:"east"},{id:"south"},{id:"west"}]},\
    {type:"minecraft:single_option",key:"hinge",label:"hinge",options:[{id:"left"},{id:"right"}]},\
    {type:"minecraft:text",key:"sign_text_translation_key",label:"sign_text_translation_key",initial:"",max_length:64},\
    {type:"minecraft:text",key:"sign_text_line_1_color",label:"sign_text_line_1_color",initial:"white",max_length:64},\
    {type:"minecraft:text",key:"sign_text_line_2_color",label:"sign_text_line_2_color",initial:"white",max_length:64},\
    {type:"minecraft:text",key:"sign_text_line_3_color",label:"sign_text_line_3_color",initial:"white",max_length:64},\
    {type:"minecraft:text",key:"sign_text_line_4_color",label:"sign_text_line_4_color",initial:"white",max_length:64},\
  ],\
  pause: false,\
  yes: {label:"Confirm",action:{type:"minecraft:dynamic/run_command",template:"execute as $(uuid) at @s run function fossil_frights:interactions/door/editor/input {model_type:\"$(model_type)\",sound_type:\"$(sound_type)\",facing:\"$(facing)\",hinge:\"$(hinge)\",sign_text_translation_key:\"$(sign_text_translation_key)\",sign_text_line_1_color:\"$(sign_text_line_1_color)\",sign_text_line_2_color:\"$(sign_text_line_2_color)\",sign_text_line_3_color:\"$(sign_text_line_3_color)\",sign_text_line_4_color:\"$(sign_text_line_4_color)\"}"}},\
  no: {label:{translate:"gui.cancel"}}\
}

loot replace block 0 0 0 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}],functions:[{function:"minecraft:set_name",entity:"this",name:{selector:"@s"}}]}]}
data modify storage fossil_frights:door editor_dialog.inputs[{key:"uuid"}].options[0].id set from block 0 0 0 Items[0].components.minecraft:custom_name.insertion

function fossil_frights:interactions/door/editor/open_set_remove_command with storage fossil_frights:door editor_dialog.inputs[{key:"uuid"}].options[0]

data modify storage fossil_frights:door door_data set from entity @s data.ff_door
data modify storage fossil_frights:door editor_dialog.inputs[{key:"model_type"}].initial set from storage fossil_frights:door door_data.model_type

execute if data storage fossil_frights:door door_data{sound_type:"bamboo_wood"} run data modify storage fossil_frights:door editor_dialog.inputs[{key:"sound_type"}].options[{id:"bamboo_wood"}].initial set value true
execute if data storage fossil_frights:door door_data{sound_type:"cherry_wood"} run data modify storage fossil_frights:door editor_dialog.inputs[{key:"sound_type"}].options[{id:"cherry_wood"}].initial set value true
execute if data storage fossil_frights:door door_data{sound_type:"copper"} run data modify storage fossil_frights:door editor_dialog.inputs[{key:"sound_type"}].options[{id:"copper"}].initial set value true
execute if data storage fossil_frights:door door_data{sound_type:"iron"} run data modify storage fossil_frights:door editor_dialog.inputs[{key:"sound_type"}].options[{id:"iron"}].initial set value true
execute if data storage fossil_frights:door door_data{sound_type:"nether_wood"} run data modify storage fossil_frights:door editor_dialog.inputs[{key:"sound_type"}].options[{id:"nether_wood"}].initial set value true

execute if block ~ ~ ~ #doors[facing=east] run data modify storage fossil_frights:door editor_dialog.inputs[{key:"facing"}].options[{id:"east"}].initial set value true
execute if block ~ ~ ~ #doors[facing=south] run data modify storage fossil_frights:door editor_dialog.inputs[{key:"facing"}].options[{id:"south"}].initial set value true
execute if block ~ ~ ~ #doors[facing=west] run data modify storage fossil_frights:door editor_dialog.inputs[{key:"facing"}].options[{id:"west"}].initial set value true

execute if data storage fossil_frights:door door_data{hinge:"right"} run data modify storage fossil_frights:door editor_dialog.inputs[{key:"hinge"}].options[{id:"right"}].initial set value true

data remove storage fossil_frights:door text_data
execute on passengers run data modify storage fossil_frights:door text_data set from entity @s[type=minecraft:text_display] text
data modify storage fossil_frights:door editor_dialog.inputs[{key:"sign_text_translation_key"}].initial set string storage fossil_frights:door text_data.extra[0].translate 8 -2
data modify storage fossil_frights:door editor_dialog.inputs[{key:"sign_text_line_1_color"}].initial set string storage fossil_frights:door text_data.extra[0].color
data modify storage fossil_frights:door editor_dialog.inputs[{key:"sign_text_line_2_color"}].initial set string storage fossil_frights:door text_data.extra[1].color
data modify storage fossil_frights:door editor_dialog.inputs[{key:"sign_text_line_3_color"}].initial set string storage fossil_frights:door text_data.extra[2].color
data modify storage fossil_frights:door editor_dialog.inputs[{key:"sign_text_line_4_color"}].initial set string storage fossil_frights:door text_data.extra[3].color

function fossil_frights:interactions/door/editor/show with storage fossil_frights:door

data remove storage fossil_frights:door text_data
data remove storage fossil_frights:door door_data
data remove storage fossil_frights:door editor_dialog
