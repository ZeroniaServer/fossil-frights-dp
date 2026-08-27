# Roll one ambient sound each curse cycle.
execute store result score #curse_sound_roll ff_hazard_rng run random value 1..100
execute if score #curse_sound_roll ff_hazard_rng matches 1..35 as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.9 1.0
execute if score #curse_sound_roll ff_hazard_rng matches 36..55 as @a at @s run playsound minecraft:block.trial_spawner.ambient_ominous master @s ~ ~ ~ 0.9 1.0
execute if score #curse_sound_roll ff_hazard_rng matches 56..65 as @a at @s run playsound minecraft:entity.creaking.ambient master @s ~ ~ ~ 0.9 1.0
execute if score #curse_sound_roll ff_hazard_rng matches 66..68 as @a at @s run playsound minecraft:entity.warden.step master @s ~ ~ ~ 0.9 0.8
execute if score #curse_sound_roll ff_hazard_rng matches 69..70 as @a at @s run playsound minecraft:entity.warden.sniff master @s ~ ~ ~ 0.9 0.9
