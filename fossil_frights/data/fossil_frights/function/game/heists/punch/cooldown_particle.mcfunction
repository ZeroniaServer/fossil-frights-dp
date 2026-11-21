execute if block ~ ~ ~ minecraft:powder_snow positioned ~ ~1 ~ run function fossil_frights:game/heists/punch/cooldown_particle_emit
execute if block ~ ~ ~ minecraft:snow positioned ~ ~0.125 ~ run function fossil_frights:game/heists/punch/cooldown_particle_emit
execute unless block ~ ~ ~ minecraft:powder_snow unless block ~ ~ ~ minecraft:snow if block ~ ~-0.125 ~ minecraft:snow positioned ~ ~0.125 ~ run function fossil_frights:game/heists/punch/cooldown_particle_emit
execute unless block ~ ~ ~ minecraft:powder_snow unless block ~ ~ ~ minecraft:snow unless block ~ ~-0.125 ~ minecraft:snow run function fossil_frights:game/heists/punch/cooldown_particle_emit
scoreboard players set @s ff_heist_punch_fx 20
execute if score @s ff_heist_invisipunches matches 1 run scoreboard players set @s ff_heist_punch_fx 12
execute if score @s ff_heist_invisipunches matches 2 run scoreboard players set @s ff_heist_punch_fx 8
execute if score @s ff_heist_invisipunches matches 3.. run scoreboard players set @s ff_heist_punch_fx 4
