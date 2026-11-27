data modify storage fossil_frights:bunny_slippers color set compute default integer fossil_frights:items/bunny_slippers/color
function fossil_frights:items/bunny_slippers/update_this_player_bunny_slippers_macro with storage fossil_frights:bunny_slippers {}
item modify entity @s fossil_frights:player/filtered/bunny_slippers {type:"minecraft:set_custom_data",tag:{ff_bunny_slippers:{resolved:true}}}
