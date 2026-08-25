advancement revoke @s only fossil_frights:start_room/glass_box_click
loot replace entity @e[limit=1,type=minecraft:item_display,tag=ff_start_room_glass_box] contents loot fossil_frights:display/start_room/glass_box_open
kill @e[type=minecraft:interaction,tag=ff_start_room_glass_box_click]
