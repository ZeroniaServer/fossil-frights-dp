execute unless entity @s[tag=ff_security_gate.closing] run scoreboard players set @s ff_security_gate_sound_delay 0
tag @s remove ff_security_gate.opening
tag @s add ff_security_gate.closing
schedule function fossil_frights:animations/security_gate/close/step_all 1t append
tag @s remove ff_security_gate.manually_opened
scoreboard players reset @s ff_security_gate_close_timestamp
