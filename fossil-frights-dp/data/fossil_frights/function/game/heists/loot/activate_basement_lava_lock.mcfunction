scoreboard players set $heist_basement_lava_lock ff_heist 1
execute unless score lava ff_hazard_active matches 1 run function fossil_frights:hazard/start/lava
setblock -3 71 15 minecraft:air
setblock -2 71 15 minecraft:lava
playsound minecraft:block.lava.ambient master @a ~ ~ ~ 0.8 1.0
