# Match the current baseline. If the lights hazard is active, curse defaults dark.
execute if score lights ff_hazard_active matches 1 run function fossil_frights:hazard/curse/restore_off
execute if score lights ff_hazard_active matches 0 run function fossil_frights:hazard/curse/restore_on
