execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.old,distance=..1.5] run return 0
execute if block ~ ~ ~ minecraft:water_cauldron run return 0
execute if block ~ ~ ~ minecraft:lava_cauldron run return 0
execute if predicate fossil_frights:block/any_fluid run return 0
particle minecraft:dripping_obsidian_tear ~ ~0.01 ~ 0.5 0 0.5 0 6 force
execute store result score #paint_splat ff_dummy run random value 1..4
execute if score #paint_splat ff_dummy matches 1 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/other/paint_armor/paint_boots",nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}}}
execute if score #paint_splat ff_dummy matches 2 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/other/paint_armor/paint_leggings",nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}}}
execute if score #paint_splat ff_dummy matches 3 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/other/paint_armor/paint_chestplate",nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}}}
execute if score #paint_splat ff_dummy matches 4 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/other/paint_armor/paint_helmet",nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}}}
execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] ff_paint_splat_spawn_timestamp run time query gametime
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] positioned as @n[sort=random] facing entity @n[sort=random] feet rotated ~ 0 run rotate @s ~ -90
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] at @s if block ~ ~ ~ #fossil_frights:air_like if block ~ ~-1 ~ #fossil_frights:walls_and_fences run tp @s ~ ~-0.5 ~
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] at @s if block ~ ~ ~ minecraft:snow run tp @s ~ ~0.125 ~
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] at @s if block ~ ~ ~ minecraft:lectern unless block ~ ~0.5 ~ lectern run tp @s ~ ~0.25 ~
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] at @s if block ~ ~ ~ #minecraft:pressure_plates run tp @s ~ ~0.0625 ~
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] at @s if block ~ ~ ~ minecraft:structure_void align xyz positioned ~-0.001 ~-0.001 ~-0.001 if entity @e[type=minecraft:block_display,tag=ff_fake_pressure_plate] positioned as @s run tp @s ~ ~0.0625 ~
tag @e[limit=1,type=minecraft:item_display,tag=ff_paint_splat.new] remove ff_paint_splat.new
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 2t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 20t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 150t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 400t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 420t append
