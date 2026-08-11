advancement revoke @s only fossil_frights:start_room/glass_box_click
item replace entity @e[type=minecraft:item_display,tag=ff_start_room_glass_box,limit=1] contents with minecraft:gray_stained_glass_pane[minecraft:item_name={text:"Glass Box",italic:false},minecraft:lore=[{text:"",extra:["glass_box_open"]}],minecraft:tooltip_display={hidden_components:["minecraft:lore"]}] 1
kill @e[type=minecraft:interaction,tag=ff_start_room_glass_box_click]
