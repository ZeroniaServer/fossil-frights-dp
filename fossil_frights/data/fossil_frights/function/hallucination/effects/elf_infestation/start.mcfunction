execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned 0 80 37 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:1}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned -4 69 35 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:1}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned -19 94 52 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:2}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned -29 94 61 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:2}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned -6 80 49 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:3}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned 6 70 51 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:3}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned 19 80 48 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:4}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned 36 80 48 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:4}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned 23 80 28 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:5}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned 17 94 20 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:5}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned 0 80 16 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:6}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned -16 94 20 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:6}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned 51 68 63 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:7}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned 44 85 75 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:7}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned 13 94 56 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:8}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned 23 94 79 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:8}
execute store result score #ff_elf_spawn_point ff_hallucination run random value 1..2
execute if score #ff_elf_spawn_point ff_hallucination matches 1 positioned -18 80 65 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:9}
execute if score #ff_elf_spawn_point ff_hallucination matches 2 positioned -25 70 41 run function fossil_frights:hallucination/effects/elf_infestation/summon_pair {id:9}
loot replace entity @e[type=minecraft:copper_golem,tag=ff_elf_infestation_golem,sort=random,limit=1] weapon.mainhand loot fossil_frights:items/heists/loot/common/poster_tube
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound minecraft:entity.copper_golem.death master @s ~ ~ ~ 1 1
