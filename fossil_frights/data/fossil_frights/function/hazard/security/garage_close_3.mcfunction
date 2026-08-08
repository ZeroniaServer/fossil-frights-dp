scoreboard players set #gate_crush_lock ff_hazard_rng 0
place template minecraft:garage_door_3 -4 70 38
execute positioned -4 70 39 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute positioned -3 70 39 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
execute positioned -2 70 39 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_garage_player
particle minecraft:campfire_cosy_smoke -5 70 38 0 0 0 0.01 2 force
particle minecraft:campfire_cosy_smoke -4 70 38 0 0 0 0.01 2 force
particle minecraft:campfire_cosy_smoke -3 70 38 0 0 0 0.01 2 force
execute positioned -4 70 38 run playsound minecraft:block.piston.extend block @a[distance=..24] ~ ~ ~ 1.25 0.9
