execute if score security ff_hazard_active matches 0 run return 0

# A player pressed a red button near a gate. Open the nearest idle gate.
execute as @e[limit=1,type=minecraft:marker,tag=ff_gate_3x3,tag=!ff_gate_busy,sort=nearest,distance=..3] run function fossil_frights:hazard/security/trigger_gate_3x3
execute unless entity @e[limit=1,type=minecraft:marker,tag=ff_gate_3x3,tag=!ff_gate_busy,distance=..3] as @e[limit=1,type=minecraft:marker,tag=ff_gate_2x2,tag=!ff_gate_busy,sort=nearest,distance=..3] run function fossil_frights:hazard/security/trigger_gate_2x2
execute unless entity @e[limit=1,type=minecraft:marker,tag=ff_gate_3x3,tag=!ff_gate_busy,distance=..3] unless entity @e[limit=1,type=minecraft:marker,tag=ff_gate_2x2,tag=!ff_gate_busy,distance=..3] as @e[limit=1,type=minecraft:marker,tag=ff_gate_5x6,tag=!ff_gate_busy,sort=nearest,distance=..3] run function fossil_frights:hazard/security/trigger_gate_5x6
