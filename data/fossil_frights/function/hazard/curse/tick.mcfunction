# State 0 waits 4 seconds between flicker bursts.
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 0 run scoreboard players remove #curse_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 0 if score #curse_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/cycle

# Roll a player curse effect every 5 seconds.
execute if score curse ff_hazard_active matches 1 run scoreboard players remove #curse_effect_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_effect_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/effect_roll

# State 1 keeps the selected bands dark for 0.25-0.5 seconds.
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 1 run scoreboard players remove #curse_restore_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 1 if score #curse_restore_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/advance_off

# State 2 is a tiny gap before another flicker on the same bands.
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 2 run scoreboard players remove #curse_second_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 2 if score #curse_second_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/resume_flicker
