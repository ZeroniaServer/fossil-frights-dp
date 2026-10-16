kill @e[type=minecraft:item_display,tag=ff_spider_fright]
tag @s add ff_spider_fright_active
scoreboard players set @s ff_spider_fright_delay 6
summon minecraft:item_display 50.4375 93.875 33.25 {Tags:["ff_spider_fright"],start_interpolation:0,interpolation_duration:7,item:{components:{"minecraft:item_model":"fossil_frights:display/misc/frights/spider"},count:1,id:"minecraft:paper"},transformation:{left_rotation:[-0.008850031f,0.9642908f,0.25792783f,0.059482962f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.2f,0.2f,0.2f],translation:[0.0f,0.0f,0.0f]}}
data merge entity @e[type=minecraft:item_display,tag=ff_spider_fright,sort=nearest,limit=1] {start_interpolation:0,interpolation_duration:7,transformation:{scale:[0.5f,0.5000006f,0.5000003f]}}
