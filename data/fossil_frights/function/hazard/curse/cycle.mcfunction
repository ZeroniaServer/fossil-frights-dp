# Pick 6 unique bands, roll the ambient sound, then decide how many extra flashes to run.
function fossil_frights:hazard/curse/clear_selected
function fossil_frights:hazard/curse/pick_one
function fossil_frights:hazard/curse/pick_one
function fossil_frights:hazard/curse/pick_one
function fossil_frights:hazard/curse/pick_one
function fossil_frights:hazard/curse/pick_one
function fossil_frights:hazard/curse/pick_one
function fossil_frights:hazard/curse/play_cycle_sound

# Favor extra flickers heavily.
execute store result score #curse_roll ff_hazard_rng run random value 1..100
scoreboard players set #curse_blinks ff_hazard_rng 0
execute if score #curse_roll ff_hazard_rng matches 1..20 run scoreboard players set #curse_blinks ff_hazard_rng 0
execute if score #curse_roll ff_hazard_rng matches 21..60 run scoreboard players set #curse_blinks ff_hazard_rng 1
execute if score #curse_roll ff_hazard_rng matches 61..80 run scoreboard players set #curse_blinks ff_hazard_rng 2
execute if score #curse_roll ff_hazard_rng matches 81..100 run scoreboard players set #curse_blinks ff_hazard_rng 3
function fossil_frights:hazard/curse/apply_selected
execute store result score #curse_restore_timer ff_hazard_rng run random value 5..10
scoreboard players set #curse_state ff_hazard_rng 1
