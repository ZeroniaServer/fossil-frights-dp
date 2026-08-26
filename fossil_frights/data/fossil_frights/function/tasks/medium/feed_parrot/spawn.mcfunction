kill @e[type=minecraft:parrot,tag=ff_feed_parrot]
kill @e[type=minecraft:interaction,tag=ff_feed_parrot_click]
summon minecraft:parrot 25.5 98.1 89.5 {Tags:["ff_feed_parrot"],Invulnerable:true,Variant:2,Rotation:[180f,0f],home_pos:[25,98,89],home_radius:0}
attribute @e[type=minecraft:parrot,tag=ff_feed_parrot,sort=nearest,limit=1] minecraft:movement_speed base set 0
summon minecraft:interaction 25.5 98 89.5 {width:1,height:1,response:true,Tags:["ff_feed_parrot_click"]}
