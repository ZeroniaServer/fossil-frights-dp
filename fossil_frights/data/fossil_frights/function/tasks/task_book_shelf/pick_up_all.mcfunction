playsound minecraft:block.chiseled_bookshelf.pickup player @a
tag @s add ff_bookshelf_acknowledged
loot give @s mine 18 71 29 stone[custom_data={drop_contents:true}]
item fill block 18 71 29 container.* with minecraft:air
