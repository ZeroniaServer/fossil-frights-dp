execute if entity @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature,limit=1] run return 0

execute if items entity @s weapon.mainhand *[custom_data~{itemID:"instant_coffee"}] run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute if items entity @s weapon.mainhand *[custom_data~{itemID:"coffee"}] run item modify entity @s weapon.mainhand fossil_frights:deduct_1
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"instant_coffee"}] unless items entity @s weapon.mainhand *[custom_data~{itemID:"coffee"}] if items entity @s weapon.offhand *[custom_data~{itemID:"instant_coffee"}] run item modify entity @s weapon.offhand fossil_frights:deduct_1
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"instant_coffee"}] unless items entity @s weapon.mainhand *[custom_data~{itemID:"coffee"}] if items entity @s weapon.offhand *[custom_data~{itemID:"coffee"}] run item modify entity @s weapon.offhand fossil_frights:deduct_1

particle minecraft:poof 18 70 28 0.45 0.75 0.45 0.08 32 force
particle minecraft:block{block_state:"minecraft:chiseled_bookshelf"} 18 70 28 0.45 0.75 0.45 0.08 32 force
playsound minecraft:entity.creaking.activate master @a 18 70 28 1 1
summon minecraft:strider 18 70 28 {Tags:["ff_bookshelf_passive_creature","ff_bookshelf_creature_new"],PersistenceRequired:true,Rotation:[180f,0f],Health:1f,attributes:[{id:"minecraft:max_health",base:1d},{id:"minecraft:movement_speed",base:0.3125d}]}
loot replace entity @e[limit=1,type=minecraft:strider,tag=ff_bookshelf_creature_new] saddle loot fossil_frights:damage_immunity_item
tag @e[limit=1,type=minecraft:strider,tag=ff_bookshelf_creature_new] remove ff_bookshelf_creature_new

execute as @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature,sort=nearest,limit=1] at @s run tellraw @a[distance=..32] {translate:"ff.bookshelf_creature.coffee",color:"white",with:[{translate:"ff.bookshelf_creature",color:"green"}]}
