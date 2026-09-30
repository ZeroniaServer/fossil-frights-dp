kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
kill @e[type=minecraft:item_display,tag=ff_day_1_book_marker]
scoreboard players set $day_1_book_taken ff_day 0
item override block 18 71 29 container.* with minecraft:air
