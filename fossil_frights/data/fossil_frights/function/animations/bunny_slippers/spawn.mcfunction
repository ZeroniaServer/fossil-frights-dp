function fossil_frights:animations/bunny_slippers/reset
summon minecraft:armor_stand 39 85 77 {Tags:["ff_bunny_slippers_pickup_display"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
loot replace entity @e[type=minecraft:armor_stand,tag=ff_bunny_slippers_pickup_display,limit=1] armor.feet loot fossil_frights:items/bunny_slippers_pickup
summon minecraft:interaction 39 85 77 {Tags:["ff_bunny_slippers_pickup_click"],width:0.75f,height:0.75f,response:1b}
