playsound minecraft:block.chiseled_bookshelf.pickup player @a
scoreboard players set $day_1_book_taken ff_day 1

loot give @s mine 18 71 29 stone[custom_data={drop_contents:true}]

item replace block 18 71 29 container.0 with air
item replace block 18 71 29 container.1 with air
item replace block 18 71 29 container.2 with air
item replace block 18 71 29 container.3 with air
item replace block 18 71 29 container.4 with air
item replace block 18 71 29 container.5 with air
