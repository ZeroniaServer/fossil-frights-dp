fill -28 69 8 5 69 59 minecraft:air replace minecraft:lava
scoreboard players set #x ff_hazard_rng -28
scoreboard players set #y ff_hazard_rng 69
scoreboard players set #y_below ff_hazard_rng 68
scoreboard players set #z ff_hazard_rng 8
scoreboard players set #lava_mode ff_hazard_rng 0
execute as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1.0 0.8
function fossil_frights:hazard/lava/scan
