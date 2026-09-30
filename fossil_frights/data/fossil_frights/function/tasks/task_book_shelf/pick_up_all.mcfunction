playsound minecraft:block.chiseled_bookshelf.pickup player @a
scoreboard players set $day_1_book_taken ff_day 1
loot give @s mine 18 71 29 stone[custom_data={drop_contents:true}]
item override block 18 71 29 container.* with minecraft:air
