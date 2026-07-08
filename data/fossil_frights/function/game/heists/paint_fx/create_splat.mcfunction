execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.old,distance=..1.5] run return 0
execute if predicate fossil_frights:block/water_fluid run return 0
execute if block ~ ~ ~ #fossil_frights:paint_splats_ignore if block ~ ~-1 ~ #fossil_frights:paint_splats_ignore positioned ~ ~-1 ~ align y run return run function fossil_frights:game/heists/paint_fx/create_splat
particle minecraft:dripping_obsidian_tear ~ ~0.01 ~ 0.5 0 0.5 0 6 force
execute store result score #paint_splat ff_dummy run random value 1..4
execute if score #paint_splat ff_dummy matches 1 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}},loot_table:"fossil_frights:items/other/paint_armor/paint_boots"}
execute if score #paint_splat ff_dummy matches 2 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}},loot_table:"fossil_frights:items/other/paint_armor/paint_leggings"}
execute if score #paint_splat ff_dummy matches 3 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}},loot_table:"fossil_frights:items/other/paint_armor/paint_chestplate"}
execute if score #paint_splat ff_dummy matches 4 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_paint_splat","ff_paint_splat.new"],width:1,height:1,brightness:{block:15,sky:15},transformation:{right_rotation:[0,0,0,1],scale:[0,0,0],left_rotation:[0,0,0,1],translation:[0,0,0]}},loot_table:"fossil_frights:items/other/paint_armor/paint_helmet"}
execute store result score @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] ff_paint_splat_spawn_timestamp run time query gametime
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] positioned as @n[sort=random] facing entity @n[sort=random] feet rotated ~ 0 run rotate @s ~ -90
execute as @e[limit=1,distance=..0.001,type=minecraft:item_display,tag=ff_paint_splat.new] at @s if block ~ ~ ~ snow run tp @s ~ ~0.125 ~
tag @e[limit=1,type=minecraft:item_display,tag=ff_paint_splat.new] remove ff_paint_splat.new
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 2t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 20t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 150t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 400t append
schedule function fossil_frights:game/heists/paint_fx/check_paint_splat 420t append
