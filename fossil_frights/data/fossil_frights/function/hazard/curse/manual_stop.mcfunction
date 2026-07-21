execute if score #curse_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute if score curse ff_hazard_active matches 0 run return 0
function fossil_frights:hazard/stop/curse
scoreboard players set #curse_manual_cooldown ff_hazard_rng 40
