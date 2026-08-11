execute if score $heist_basement_lava_lock ff_heist matches 1.. run return 0
scoreboard players set #lava_mode ff_hazard_rng 0
scoreboard players set #lava_phase ff_hazard_rng 2
scoreboard players set #lava_anim_phase ff_hazard_rng 101
scoreboard players set #lava_anim_timer ff_hazard_rng 10
place template fossil_frights:lava_phase_2 -26 69 17
execute as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1.0 0.8
