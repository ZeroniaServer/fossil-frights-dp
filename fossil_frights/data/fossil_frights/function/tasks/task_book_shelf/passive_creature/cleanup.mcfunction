execute as @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature] at @s run particle minecraft:poof ~ ~1 ~ 0.45 0.75 0.45 0.08 32 force
execute as @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature] at @s run particle minecraft:block{block_state:"minecraft:chiseled_bookshelf"} ~ ~1 ~ 0.45 0.75 0.45 0.08 32 force
kill @e[type=minecraft:strider,tag=ff_bookshelf_passive_creature]
