scoreboard players set #gate_crush_lock ff_hazard_rng 0
function fossil_frights:hazard/security/update_panel

execute as @e[type=minecraft:item_display,tag=ff_security_gate] run function fossil_frights:animations/security_gate/close/start
