kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
scoreboard players set $day_1_book_marker_flash ff_day 0
summon minecraft:text_display 18.5 72.1 28.97 {Tags:["ff_day_1_book_marker"],text:[{"text":"!","color":"white","bold":true,"italic":false}],billboard:"fixed",see_through:0b,Rotation:[180f,0f],background:0,default_background:0b,shadow:0b,brightness:{sky:15,block:15},alignment:"center",view_range:24f,transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
