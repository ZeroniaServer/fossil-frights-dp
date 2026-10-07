scoreboard players set #bookshelf_has_books ff_task_book_shelf 0
execute if items block 18 71 29 container.0 * run scoreboard players set #bookshelf_has_books ff_task_book_shelf 1
execute if items block 18 71 29 container.1 * run scoreboard players set #bookshelf_has_books ff_task_book_shelf 1
execute if items block 18 71 29 container.2 * run scoreboard players set #bookshelf_has_books ff_task_book_shelf 1
execute if items block 18 71 29 container.3 * run scoreboard players set #bookshelf_has_books ff_task_book_shelf 1
execute if items block 18 71 29 container.4 * run scoreboard players set #bookshelf_has_books ff_task_book_shelf 1
execute if items block 18 71 29 container.5 * run scoreboard players set #bookshelf_has_books ff_task_book_shelf 1
execute unless score #bookshelf_has_books ff_task_book_shelf matches 1 run function fossil_frights:tasks/task_book_shelf/bookshelf_creature/cleanup
execute unless score #bookshelf_has_books ff_task_book_shelf matches 1 run kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
execute unless score #bookshelf_has_books ff_task_book_shelf matches 1 run kill @e[type=minecraft:item_display,tag=ff_day_1_book_marker]
execute unless score #bookshelf_has_books ff_task_book_shelf matches 1 run return 0
execute unless entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged] run function fossil_frights:tasks/task_book_shelf/bookshelf_creature/cleanup
execute if entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged,predicate=fossil_frights:location/room/start_room] run function fossil_frights:tasks/task_book_shelf/onboarding_marker/show
execute unless entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged,predicate=fossil_frights:location/room/start_room] run kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
execute unless entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged,predicate=fossil_frights:location/room/start_room] run kill @e[type=minecraft:item_display,tag=ff_day_1_book_marker]
execute if entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged,predicate=fossil_frights:location/room/start_room] run function fossil_frights:tasks/task_book_shelf/bookshelf_creature/cleanup
execute unless entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged,predicate=fossil_frights:location/room/start_room] if entity @a[team=ff_guard,tag=!ff_bookshelf_acknowledged] run function fossil_frights:tasks/task_book_shelf/bookshelf_creature/tick
scoreboard players add $bookshelf_onboarding_marker_flash ff_day 1
execute if score $bookshelf_onboarding_marker_flash ff_day matches 20.. run scoreboard players set $bookshelf_onboarding_marker_flash ff_day 0
execute if score $bookshelf_onboarding_marker_flash ff_day matches ..9 run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:[{"text":"!","color":"white","bold":true,"italic":false}],background:0,brightness:{sky:15,block:15}}
execute if score $bookshelf_onboarding_marker_flash ff_day matches ..9 run data merge entity @e[type=minecraft:item_display,tag=ff_day_1_book_marker,limit=1] {view_range:100,brightness:{sky:15,block:15}}
execute if score $bookshelf_onboarding_marker_flash ff_day matches 10..19 run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:""}
execute if score $bookshelf_onboarding_marker_flash ff_day matches 10..19 run data merge entity @e[type=minecraft:item_display,tag=ff_day_1_book_marker,limit=1] {view_range:0}

execute if score $day_timer ff_day matches ..3599 as @a[team=ff_guard,tag=!ff_bookshelf_acknowledged] run function fossil_frights:player/actionbar/show/fallback_instruction/task_book
execute if score $day_timer ff_day matches 3600.. if score $bookshelf_onboarding_marker_flash ff_day matches ..9 as @a[team=ff_guard,tag=!ff_bookshelf_acknowledged] run function fossil_frights:player/actionbar/show/fallback_instruction/task_book
execute if score $day_current ff_day matches 1..2 if score $day_timer ff_day matches ..3599 as @a[team=ff_guard,tag=ff_bookshelf_acknowledged,scores={ff_run_count=..2}] run function fossil_frights:player/actionbar/show/fallback_instruction/locator_bar.yellow
execute if score $day_current ff_day matches 1..2 if score $day_timer ff_day matches 3600.. if score $bookshelf_onboarding_marker_flash ff_day matches ..9 as @a[team=ff_guard,tag=ff_bookshelf_acknowledged,scores={ff_run_count=..2}] run function fossil_frights:player/actionbar/show/fallback_instruction/locator_bar.yellow
execute if score $day_current ff_day matches 1..2 if score $day_timer ff_day matches 3600.. if score $bookshelf_onboarding_marker_flash ff_day matches 10..19 as @a[team=ff_guard,tag=ff_bookshelf_acknowledged,scores={ff_run_count=..2}] run function fossil_frights:player/actionbar/show/fallback_instruction/locator_bar.white
