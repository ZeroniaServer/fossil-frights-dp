data modify storage fossil_frights:mannequin_editor dialog set value {\
  type:"minecraft:multi_action",\
  title:{text:"Mannequin Editor",color:"gold"},\
  pause:false,\
  after_action:"none",\
  body:[{type:"minecraft:plain_message",width:360,contents:{text:"[Delete mannequin]",color:"red",underlined:true,click_event:{action:"run_command",command:""}}}],\
  inputs:[\
    {type:"minecraft:single_option",key:"target",label:"UUID",label_visible:1b,options:[{id:"@e[type=minecraft:mannequin,sort=nearest,limit=1]"}]},\
    {type:"minecraft:text",key:"skin",label:"Skin player name",initial:"",max_length:64}\
  ],\
  columns:2,\
  actions:[\
    {label:{text:"Look at me",color:"white"},action:{type:"dynamic/run_command",template:"execute as $(target) at @s run rotate @s facing entity @p[sort=nearest,limit=1]"}},\
    {label:{text:"Look at screen",color:"white"},action:{type:"dynamic/run_command",template:"execute as $(target) at @s run rotate @s facing 8 75 75"}},\
    {label:{text:"minecraft:air",color:"gray"}},\
    {label:{text:"Copy mainhand",color:"white"},action:{type:"dynamic/run_command",template:"item replace entity $(target) weapon.mainhand from entity @s weapon.mainhand"}},\
    {label:{text:"minecraft:air",color:"gray"}},\
    {label:{text:"Copy offhand",color:"white"},action:{type:"dynamic/run_command",template:"item replace entity $(target) weapon.offhand from entity @s weapon.offhand"}},\
    {label:{text:"Save",color:"white"},action:{type:"dynamic/run_command",template:"execute as $(target) run function fossil_frights:mannequin/editor/set_skin {skin:\"$(skin)\"}"}},\
    {label:{text:"Cancel",color:"gray"},action:{type:"run_command",command:"dialog clear @s"}}\
  ]\
}\n+\n+loot replace block 0 0 0 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}],modifier:{type:"minecraft:set_name",entity:"this",name:{selector:"@s"}}}]}\n+data modify storage fossil_frights:mannequin_editor dialog.inputs[{key:"target"}].options[0].id set from block 0 0 0 Items[0].components.minecraft:custom_name.insertion\n+function fossil_frights:mannequin/editor/set_delete_command with storage fossil_frights:mannequin_editor dialog.inputs[{key:"target"}]\n+\n+execute if data entity @s profile.texture run data modify storage fossil_frights:mannequin_editor dialog.inputs[{key:"skin"}].initial set string entity @s profile.texture 29\n+\n+execute if data entity @s equipment.mainhand run data modify storage fossil_frights:mannequin_editor dialog.actions[2].label.text set string entity @s equipment.mainhand.id\n+execute if data entity @s equipment.offhand run data modify storage fossil_frights:mannequin_editor dialog.actions[4].label.text set string entity @s equipment.offhand.id\n+\n+function fossil_frights:mannequin/editor/show with storage fossil_frights:mannequin_editor\n+data remove storage fossil_frights:mannequin_editor dialog
