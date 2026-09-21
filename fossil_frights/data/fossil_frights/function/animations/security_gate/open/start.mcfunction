tag @s remove ff_security_gate.closing
tag @s add ff_security_gate.opening
scoreboard players set @s ff_security_gate_sound_delay 0
schedule function fossil_frights:animations/security_gate/open/step_all 1t append
