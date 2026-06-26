execute align xyz if entity @e[limit=1,distance=..0.01,type=block_display,tag=ff_fake_pressure_plate] run return run tellraw @s {color:"red",text:"This block is already occupied by a fake pressure plate"}
execute unless block ~ ~ ~ #pressure_plates run tellraw @s {color:"red",text:"There is no pressure plate block here"}
execute unless block ~ ~ ~ #pressure_plates run return fail
execute if block ~ ~ ~ heavy_weighted_pressure_plate run tellraw @s {color:"red",text:"heavy_weighted_pressure_plate is not supported"}
execute if block ~ ~ ~ heavy_weighted_pressure_plate run return fail
execute if block ~ ~ ~ light_weighted_pressure_plate run tellraw @s {color:"red",text:"light_weighted_pressure_plate is not supported"}
execute if block ~ ~ ~ light_weighted_pressure_plate run return fail

execute if block ~ ~ ~ minecraft:acacia_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:acacia_pressure_plate"}}
execute if block ~ ~ ~ minecraft:bamboo_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:bamboo_pressure_plate"}}
execute if block ~ ~ ~ minecraft:birch_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:birch_pressure_plate"}}
execute if block ~ ~ ~ minecraft:cherry_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:cherry_pressure_plate"}}
execute if block ~ ~ ~ minecraft:crimson_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:crimson_pressure_plate"}}
execute if block ~ ~ ~ minecraft:dark_oak_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:dark_oak_pressure_plate"}}
execute if block ~ ~ ~ minecraft:jungle_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:jungle_pressure_plate"}}
execute if block ~ ~ ~ minecraft:mangrove_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:mangrove_pressure_plate"}}
execute if block ~ ~ ~ minecraft:oak_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:oak_pressure_plate"}}
execute if block ~ ~ ~ minecraft:pale_oak_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:pale_oak_pressure_plate"}}
execute if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:polished_blackstone_pressure_plate"}}
execute if block ~ ~ ~ minecraft:spruce_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:spruce_pressure_plate"}}
execute if block ~ ~ ~ minecraft:stone_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:stone_pressure_plate"}}
execute if block ~ ~ ~ minecraft:warped_pressure_plate align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["ff_fake_pressure_plate"],block_state:{Name:"minecraft:warped_pressure_plate"}}

setblock ~ ~ ~ structure_void strict
