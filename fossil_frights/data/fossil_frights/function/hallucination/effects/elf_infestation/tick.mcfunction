execute as @e[tag=ff_elf_infestation_driver,tag=!ff_elf_infestation_paused] at @s if entity @a[gamemode=!spectator,distance=..1.5] run attribute @s minecraft:movement_speed modifier add fossil_frights:elf_infestation_paused -1 add_multiplied_total
execute as @e[tag=ff_elf_infestation_driver,tag=!ff_elf_infestation_paused] at @s if entity @a[gamemode=!spectator,distance=..1.5] run tag @s add ff_elf_infestation_paused
execute as @e[tag=ff_elf_infestation_driver,tag=ff_elf_infestation_paused] at @s unless entity @a[gamemode=!spectator,distance=..1.5] run attribute @s minecraft:movement_speed modifier remove fossil_frights:elf_infestation_paused
execute as @e[tag=ff_elf_infestation_driver,tag=ff_elf_infestation_paused] at @s unless entity @a[gamemode=!spectator,distance=..1.5] run tag @s remove ff_elf_infestation_paused
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_1] at @e[tag=ff_elf_infestation_driver_1,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_2] at @e[tag=ff_elf_infestation_driver_2,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_3] at @e[tag=ff_elf_infestation_driver_3,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_4] at @e[tag=ff_elf_infestation_driver_4,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_5] at @e[tag=ff_elf_infestation_driver_5,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_6] at @e[tag=ff_elf_infestation_driver_6,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_7] at @e[tag=ff_elf_infestation_driver_7,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_8] at @e[tag=ff_elf_infestation_driver_8,limit=1] run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ff_elf_infestation_golem,tag=ff_elf_infestation_golem_9] at @e[tag=ff_elf_infestation_driver_9,limit=1] run tp @s ~ ~ ~ ~ 0
