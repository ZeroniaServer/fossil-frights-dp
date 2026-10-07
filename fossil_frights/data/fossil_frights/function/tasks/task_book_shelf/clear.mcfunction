kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
kill @e[type=minecraft:item_display,tag=ff_day_1_book_marker]
function fossil_frights:tasks/task_book_shelf/bookshelf_creature/cleanup
item fill block 18 71 29 container.* with minecraft:air
