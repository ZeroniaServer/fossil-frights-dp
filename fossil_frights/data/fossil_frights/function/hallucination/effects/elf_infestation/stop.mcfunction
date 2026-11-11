execute as @e[tag=ff_elf_infestation_golem] at @s run particle minecraft:poof ~ ~0.5 ~ 0.25 0.35 0.25 0.04 12 force
tp @e[tag=ff_elf_infestation_golem] 0 -64 0
tp @e[tag=ff_elf_infestation_driver] 0 -64 0
kill @e[tag=ff_elf_infestation_golem]
kill @e[tag=ff_elf_infestation_driver]
