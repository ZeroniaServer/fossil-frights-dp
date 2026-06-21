playsound minecraft:block.chiseled_bookshelf.pickup player @a

item replace block 0 0 0 container.0 from block 18 71 29 container.0
item replace block 0 0 0 container.1 from block 18 71 29 container.1
item replace block 0 0 0 container.2 from block 18 71 29 container.2
item replace block 0 0 0 container.3 from block 18 71 29 container.3
item replace block 0 0 0 container.4 from block 18 71 29 container.4
item replace block 0 0 0 container.5 from block 18 71 29 container.5

item replace block 18 71 29 container.0 with air
item replace block 18 71 29 container.1 with air
item replace block 18 71 29 container.2 with air
item replace block 18 71 29 container.3 with air
item replace block 18 71 29 container.4 with air
item replace block 18 71 29 container.5 with air

loot give @s mine 0 0 0 stone[custom_data={drop_contents:true}]
