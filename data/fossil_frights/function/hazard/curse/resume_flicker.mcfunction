# Flicker the same selected sections off again after a tiny gap.
function fossil_frights:hazard/curse/apply_selected
execute store result score #curse_restore_timer ff_hazard_rng run random value 3..7
scoreboard players set #curse_state ff_hazard_rng 1
