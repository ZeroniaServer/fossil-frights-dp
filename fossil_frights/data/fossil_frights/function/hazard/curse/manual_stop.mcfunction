execute if score #curse_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute unless predicate fossil_frights:game_state/hazard_active/curse run return 0
function fossil_frights:hazard/stop/curse
scoreboard players set #curse_manual_cooldown ff_hazard_rng 40
