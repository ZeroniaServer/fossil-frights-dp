# Reset the curse flicker state and begin the first cycle after 4 seconds.
scoreboard players set #curse_timer ff_hazard_rng 80
scoreboard players set #curse_restore_timer ff_hazard_rng 0
scoreboard players set #curse_second_timer ff_hazard_rng 0
scoreboard players set #curse_state ff_hazard_rng 0
scoreboard players set #curse_blinks ff_hazard_rng 0
scoreboard players set #curse_effect_timer ff_hazard_rng 100
function fossil_frights:hazard/curse/clear_selected
function fossil_frights:hazard/curse/restore_all
