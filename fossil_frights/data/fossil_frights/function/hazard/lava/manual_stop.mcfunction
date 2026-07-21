execute if score #lava_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute if score lava ff_hazard_active matches 0 run return 0
function fossil_frights:hazard/stop/lava
scoreboard players set #lava_manual_cooldown ff_hazard_rng 40
