advancement revoke @s only fossil_frights:start_room_glass_box_click
data modify entity @e[type=minecraft:item_display,tag=ff_start_room_glass_box,limit=1] item set value {id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"Glass Box",italic:false},"minecraft:lore":[{text:"",extra:["glass_box_open"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}}
kill @e[type=minecraft:interaction,tag=ff_start_room_glass_box_click]
