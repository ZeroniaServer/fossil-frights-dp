scoreboard players set #slots_empty ff_task_book_shelf 6
execute if items block 18 71 29 container.0 * run scoreboard players remove #slots_empty ff_task_book_shelf 1
execute if items block 18 71 29 container.1 * run scoreboard players remove #slots_empty ff_task_book_shelf 1
execute if items block 18 71 29 container.2 * run scoreboard players remove #slots_empty ff_task_book_shelf 1
execute if items block 18 71 29 container.3 * run scoreboard players remove #slots_empty ff_task_book_shelf 1
execute if items block 18 71 29 container.4 * run scoreboard players remove #slots_empty ff_task_book_shelf 1
execute if items block 18 71 29 container.5 * run scoreboard players remove #slots_empty ff_task_book_shelf 1
execute if score #slots_empty ff_task_book_shelf matches 0 run return run playsound minecraft:block.chiseled_bookshelf.hit player @s

execute store result score #task_books_in_inventory ff_task_book_shelf run clear @s *[custom_data~{ff_any_task_book:true}] 0
execute if score #task_books_in_inventory ff_task_book_shelf matches 0 run return run playsound minecraft:block.chiseled_bookshelf.hit player @s

playsound minecraft:block.chiseled_bookshelf.insert player @a

execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.0 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.0"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.1 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.1"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.2 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.2"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.3 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.3"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.4 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.4"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.5 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.5"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.6 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.6"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.7 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.7"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s hotbar.8 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"hotbar.8"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.0 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.0"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.1 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.1"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.2 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.2"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.3 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.3"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.4 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.4"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.5 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.5"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.6 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.6"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.7 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.7"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.8 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.8"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.9 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.9"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.10 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.10"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.11 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.11"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.12 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.12"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.13 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.13"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.14 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.14"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.15 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.15"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.16 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.16"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.17 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.17"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.18 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.18"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.19 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.19"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.20 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.20"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.21 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.21"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.22 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.22"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.23 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.23"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.24 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.24"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.25 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.25"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s inventory.26 *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"inventory.26"}
execute if score #slots_empty ff_task_book_shelf matches 1.. if items entity @s weapon.offhand *[custom_data~{ff_any_task_book:true}] run function fossil_frights:tasks/task_book_shelf/insert_all_slot {slot:"weapon.offhand"}
