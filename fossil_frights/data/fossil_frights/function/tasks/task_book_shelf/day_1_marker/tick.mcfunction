execute if score $day_1_book_taken ff_day matches 1.. run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:""}
execute if score $day_1_book_taken ff_day matches 1.. run return 0
scoreboard players add $day_1_book_marker_flash ff_day 1
execute if score $day_1_book_marker_flash ff_day matches 20.. run scoreboard players set $day_1_book_marker_flash ff_day 0
execute if score $day_1_book_marker_flash ff_day matches ..9 run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:[{"text":"!","color":"white","bold":true,"italic":false}],background:0,brightness:{sky:15,block:15}}
execute if score $day_1_book_marker_flash ff_day matches 10..19 run data merge entity @e[type=minecraft:text_display,tag=ff_day_1_book_marker,limit=1] {text:""}
execute if score $day_timer ff_day matches ..3599 as @a[team=ff_guard,scores={ff_run_count=1..2}] run title @s actionbar {"translate":"ff.actionbar.locator_bar","color":"yellow","italic":false}
execute if score $day_timer ff_day matches 3600.. if score $day_1_book_marker_flash ff_day matches ..9 as @a[team=ff_guard,scores={ff_run_count=1..2}] run title @s actionbar {"translate":"ff.actionbar.locator_bar","color":"yellow","italic":false}
execute if score $day_timer ff_day matches 3600.. if score $day_1_book_marker_flash ff_day matches 10..19 as @a[team=ff_guard,scores={ff_run_count=1..2}] run title @s actionbar {"translate":"ff.actionbar.locator_bar","color":"white","italic":false}
