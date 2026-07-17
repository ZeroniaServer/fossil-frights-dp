kill @e[type=minecraft:text_display,tag=ff_multiplayer_label]
kill @e[type=minecraft:interaction,tag=ff_multiplayer_click]
summon minecraft:interaction 12 71 28 {width:1,height:1,response:true,Tags:["ff_multiplayer_click"]}
