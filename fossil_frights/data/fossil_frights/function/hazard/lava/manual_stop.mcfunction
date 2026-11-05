execute if score #lava_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute unless predicate fossil_frights:game_state/hazard_active/lava run return 0
function fossil_frights:hazard/stop/lava
scoreboard players set #lava_manual_cooldown ff_hazard_rng 40
