data modify entity @s Age set value 5600

execute store result score @s ff_dropped_item_despawn_timestamp run time query gametime
scoreboard players add @s ff_dropped_item_despawn_timestamp 400

summon minecraft:text_display ~ ~ ~ {Tags:["ff_dropped_heist_loot_text","ff_dropped_heist_loot_text_new"],billboard:"center",text:"",transformation:{left_rotation:[1,0,0,0],scale:[1,1,1],right_rotation:[1,0,0,0],translation:[0,0.35,0.1]},background:0,shadow:true}
ride @e[limit=1,distance=..0.01,type=minecraft:text_display,tag=ff_dropped_heist_loot_text_new] mount @s
execute on passengers run tag @s remove ff_dropped_heist_loot_text_new
