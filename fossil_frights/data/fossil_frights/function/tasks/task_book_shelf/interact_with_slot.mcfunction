scoreboard players set #slot_occupied ff_task_book_shelf 0
execute if score #slot ff_task_book_shelf matches 0 if items block 18 71 29 container.0 * run scoreboard players set #slot_occupied ff_task_book_shelf 1
execute if score #slot ff_task_book_shelf matches 1 if items block 18 71 29 container.1 * run scoreboard players set #slot_occupied ff_task_book_shelf 1
execute if score #slot ff_task_book_shelf matches 2 if items block 18 71 29 container.2 * run scoreboard players set #slot_occupied ff_task_book_shelf 1
execute if score #slot ff_task_book_shelf matches 3 if items block 18 71 29 container.3 * run scoreboard players set #slot_occupied ff_task_book_shelf 1
execute if score #slot ff_task_book_shelf matches 4 if items block 18 71 29 container.4 * run scoreboard players set #slot_occupied ff_task_book_shelf 1
execute if score #slot ff_task_book_shelf matches 5 if items block 18 71 29 container.5 * run scoreboard players set #slot_occupied ff_task_book_shelf 1

setblock 0 0 0 air strict
setblock 0 0 0 yellow_shulker_box{lock:{count:-1}} strict

execute if score #slot_occupied ff_task_book_shelf matches 1 if predicate fossil_frights:player/input/sneak run return run function fossil_frights:tasks/task_book_shelf/pick_up_all
execute if score #slot_occupied ff_task_book_shelf matches 0 if predicate fossil_frights:player/input/sneak run return run function fossil_frights:tasks/task_book_shelf/insert_all

execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 0 run loot give @s mine 18 71 29 stone[custom_data={drop_contents:{slot:0}}]
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 0 run item replace block 18 71 29 container.0 with air
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 1 run loot give @s mine 18 71 29 stone[custom_data={drop_contents:{slot:1}}]
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 1 run item replace block 18 71 29 container.1 with air
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 2 run loot give @s mine 18 71 29 stone[custom_data={drop_contents:{slot:2}}]
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 2 run item replace block 18 71 29 container.2 with air
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 3 run loot give @s mine 18 71 29 stone[custom_data={drop_contents:{slot:3}}]
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 3 run item replace block 18 71 29 container.3 with air
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 4 run loot give @s mine 18 71 29 stone[custom_data={drop_contents:{slot:4}}]
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 4 run item replace block 18 71 29 container.4 with air
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 5 run loot give @s mine 18 71 29 stone[custom_data={drop_contents:{slot:5}}]
execute if score #slot_occupied ff_task_book_shelf matches 1 if score #slot ff_task_book_shelf matches 5 run item replace block 18 71 29 container.5 with air
execute if score #slot_occupied ff_task_book_shelf matches 1 run scoreboard players set $day_1_book_taken ff_day 1
execute if score #slot_occupied ff_task_book_shelf matches 1 run return run playsound minecraft:block.chiseled_bookshelf.pickup player @a

scoreboard players set #mainhand ff_task_book_shelf 0
execute if items entity @s weapon.mainhand * run scoreboard players set #mainhand ff_task_book_shelf 1
execute if score #mainhand ff_task_book_shelf matches 0 unless items entity @s weapon.offhand * run return run playsound minecraft:block.chiseled_bookshelf.hit player @s
execute if score #mainhand ff_task_book_shelf matches 1 unless items entity @s weapon.mainhand *[custom_data~{ff_any_task_book:true}] run return run playsound minecraft:block.chiseled_bookshelf.hit player @s
execute if score #mainhand ff_task_book_shelf matches 0 unless items entity @s weapon.offhand *[custom_data~{ff_any_task_book:true}] run return run playsound minecraft:block.chiseled_bookshelf.hit player @s

execute if score #mainhand ff_task_book_shelf matches 1 run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute if score #mainhand ff_task_book_shelf matches 1 run item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}
execute if score #mainhand ff_task_book_shelf matches 0 run item replace block 0 0 0 container.0 from entity @s weapon.offhand
execute if score #mainhand ff_task_book_shelf matches 0 run item modify entity @s weapon.offhand {function:"minecraft:set_count",count:-1,add:true}
item modify block 0 0 0 container.0 {function:"minecraft:set_count",count:1}
execute if score #slot ff_task_book_shelf matches 0 run item replace block 18 71 29 container.0 from block 0 0 0 container.0
execute if score #slot ff_task_book_shelf matches 1 run item replace block 18 71 29 container.1 from block 0 0 0 container.0
execute if score #slot ff_task_book_shelf matches 2 run item replace block 18 71 29 container.2 from block 0 0 0 container.0
execute if score #slot ff_task_book_shelf matches 3 run item replace block 18 71 29 container.3 from block 0 0 0 container.0
execute if score #slot ff_task_book_shelf matches 4 run item replace block 18 71 29 container.4 from block 0 0 0 container.0
execute if score #slot ff_task_book_shelf matches 5 run item replace block 18 71 29 container.5 from block 0 0 0 container.0
playsound minecraft:block.chiseled_bookshelf.insert player @a
