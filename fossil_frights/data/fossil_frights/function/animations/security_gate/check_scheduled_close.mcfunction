execute as @e[type=minecraft:item_display,tag=ff_security_gate] if score @s ff_security_gate_close_timestamp <= #gametime ff_global run function fossil_frights:animations/security_gate/close/start
