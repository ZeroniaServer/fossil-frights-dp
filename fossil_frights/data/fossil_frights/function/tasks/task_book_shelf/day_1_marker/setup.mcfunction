kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
scoreboard players set $day_1_book_marker_flash ff_day 0
scoreboard players set $day_1_book_taken ff_day 0
summon minecraft:text_display 18.5 72.1 28.97 {Tags:["ff_day_1_book_marker"],text:[{text:"!",color:"white",bold:true,italic:false}],billboard:"fixed",see_through:false,Rotation:[180,0],background:0,brightness:{sky:15,block:15},alignment:"center",view_range:24,transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[2,2,2]}}
