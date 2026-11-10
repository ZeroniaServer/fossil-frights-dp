# One global ambient sound roll per flicker cycle: four sounds at 20% each, or silence at 20%.
execute store result score #jolly_curse_sound_roll ff_hazard_rng run random value 1..100
execute if score #jolly_curse_sound_roll ff_hazard_rng matches 1..20 as @a at @s run playsound minecraft:entity.evoker.prepare_wololo ambient @s ~ ~ ~
execute if score #jolly_curse_sound_roll ff_hazard_rng matches 21..40 as @a at @s run playsound minecraft:entity.strider.happy ambient @s ~ ~ ~
execute if score #jolly_curse_sound_roll ff_hazard_rng matches 41..60 as @a at @s run playsound minecraft:entity.baby_cat.purr ambient @s ~ ~ ~
execute if score #jolly_curse_sound_roll ff_hazard_rng matches 61..80 as @a at @s run playsound minecraft:entity.allay.ambient_with_item ambient @s ~ ~ ~
