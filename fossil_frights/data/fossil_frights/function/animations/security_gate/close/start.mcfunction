tag @s remove ff_security_gate.opening
tag @s add ff_security_gate.closing
scoreboard players set @s ff_security_gate_sound_delay 0
schedule function fossil_frights:animations/security_gate/close/step_all 1t append
