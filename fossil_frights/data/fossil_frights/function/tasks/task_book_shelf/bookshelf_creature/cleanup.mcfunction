execute as @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver] at @s run particle minecraft:poof ~ ~1 ~ 0.45 0.75 0.45 0.08 32 force
execute as @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver] at @s run particle minecraft:block{block_state:"minecraft:chiseled_bookshelf"} ~ ~1 ~ 0.45 0.75 0.45 0.08 32 force
tp @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver] 0 -64 0
tp @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual] 0 -64 0
tp @e[type=minecraft:interaction,tag=ff_bookshelf_creature_hitbox] 0 -64 0
kill @e[type=minecraft:zombie,tag=ff_bookshelf_creature_driver]
kill @e[type=minecraft:strider,tag=ff_bookshelf_creature_visual]
kill @e[type=minecraft:interaction,tag=ff_bookshelf_creature_hitbox]
tag @a remove ff_bookshelf_creature_target
