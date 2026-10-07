execute unless entity @a[tag=ff_bookshelf_creature_target] as @a[team=ff_guard,tag=!ff_bookshelf_acknowledged,sort=nearest,limit=1] run tag @s add ff_bookshelf_creature_target
execute as @a[tag=ff_bookshelf_creature_target] if predicate fossil_frights:location/room/start_room run function fossil_frights:tasks/task_book_shelf/bookshelf_creature/cleanup
execute unless entity @a[tag=ff_bookshelf_creature_target] run return 0
execute unless entity @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver,limit=1] run summon minecraft:zombie 18 70 28 {Tags:["ff_bookshelf_creature_driver"],Team:"ff_bookshelf_creature",Invulnerable:true,Silent:true,PersistenceRequired:true,CanPickUpLoot:false,attributes:[{id:"minecraft:movement_speed",base:0.35d},{id:"minecraft:follow_range",base:2048d},{id:"minecraft:attack_damage",base:0d},{id:"minecraft:knockback_resistance",base:1d}]}
execute unless entity @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual,limit=1] run summon minecraft:strider 18 70 28 {Tags:["ff_bookshelf_creature_visual"],Team:"ff_bookshelf_creature",Silent:true,NoAI:true,PersistenceRequired:true,Health:40f,attributes:[{id:"minecraft:max_health",base:40d}]}
execute unless entity @e[type=minecraft:interaction,tag=ff_bookshelf_creature_hitbox,limit=1] run summon minecraft:interaction 18 70 28 {Tags:["ff_bookshelf_creature_hitbox"],width:1.0,height:2.0,response:true}
effect give @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual] minecraft:regeneration 1000000 10 true
execute as @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual,limit=1] at @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:interaction,tag=ff_bookshelf_creature_hitbox,limit=1] at @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver,limit=1] run tp @s ~ ~ ~
scoreboard players set #bookshelf_creature_far ff_task_book_shelf 0
execute at @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver,limit=1] if entity @a[tag=ff_bookshelf_creature_target,distance=24..] run scoreboard players set #bookshelf_creature_far ff_task_book_shelf 1
execute if score #bookshelf_creature_far ff_task_book_shelf matches 1 run scoreboard players add #bookshelf_creature_flash ff_task_book_shelf 1
execute if score #bookshelf_creature_far ff_task_book_shelf matches 0 run scoreboard players set #bookshelf_creature_flash ff_task_book_shelf 0
execute if score #bookshelf_creature_flash ff_task_book_shelf matches 20.. run scoreboard players set #bookshelf_creature_flash ff_task_book_shelf 0
execute if score #bookshelf_creature_far ff_task_book_shelf matches 1 if score #bookshelf_creature_flash ff_task_book_shelf matches ..9 run data merge entity @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual,limit=1] {Glowing:true}
execute unless score #bookshelf_creature_far ff_task_book_shelf matches 1 run data merge entity @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual,limit=1] {Glowing:false}
execute if score #bookshelf_creature_far ff_task_book_shelf matches 1 if score #bookshelf_creature_flash ff_task_book_shelf matches 10..19 run data merge entity @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual,limit=1] {Glowing:false}
