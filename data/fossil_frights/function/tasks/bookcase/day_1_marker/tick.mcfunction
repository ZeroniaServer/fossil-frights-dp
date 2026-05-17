scoreboard players add $day_1_book_marker_flash ff_day 1
execute if score $day_1_book_marker_flash ff_day matches 20.. run scoreboard players set $day_1_book_marker_flash ff_day 0
execute if score $day_1_book_marker_flash ff_day matches ..9 run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:[{"text":"!","color":"white","bold":true,"italic":false}],background:0,default_background:0b,shadow:0b,brightness:{sky:15,block:15}}
execute if score $day_1_book_marker_flash ff_day matches 10..19 run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:""}
