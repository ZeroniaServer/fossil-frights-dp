execute as @e[type=minecraft:item_display,tag=ff_security_gate,tag=ff_security_gate.opening] at @s run function fossil_frights:animations/security_gate/open/step
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_security_gate,tag=ff_security_gate.opening] run schedule function fossil_frights:animations/security_gate/open/step_all 1t append
