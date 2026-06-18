setblock 0 0 0 minecraft:air strict
setblock 0 0 0 minecraft:yellow_shulker_box{} strict
item replace block 0 0 0 container.0 from entity @s contents
execute on origin run loot give @s mine 0 0 0 stone[custom_data={drop_contents:true}]
