setblock 20 71 28 minecraft:warped_button[face=wall,facing=north,powered=false]
data merge entity @e[type=minecraft:text_display,tag=ff_day_button_label,limit=1] {text:""}
data remove entity @e[type=minecraft:item_frame,tag=ff_day_button_pressed,limit=1] Item
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run setblock 20 71 28 air
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 run data merge entity @e[type=minecraft:item_frame,tag=ff_day_button_pressed,limit=1] {Item:{id:"minecraft:warped_button",count:1,components:{"minecraft:item_name":{text:"Pressed Day Button",italic:false},"minecraft:lore":[{text:"",extra:["pressed_button"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}}}
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches 0 run data merge entity @e[type=minecraft:text_display,tag=ff_day_button_label,limit=1] {text:[{text:"ꜱᴛᴀʀᴛ",color:"green"}]}
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 0 if score $day_current ff_day matches 1..9 run data merge entity @e[type=minecraft:text_display,tag=ff_day_button_label,limit=1] {text:[{text:"ɴᴇxᴛ ᴅᴀʏ",color:"green"}]}
