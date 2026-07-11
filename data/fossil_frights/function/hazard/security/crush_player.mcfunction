execute if score #gate_crush_lock ff_hazard_rng matches 1 run return 0
scoreboard players set #gate_crush_lock ff_hazard_rng 1
gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.security_gate","with":[{"selector":"@s","separator":"","color":"white"}],"color":"white"}]
advancement grant @s only fossil_frights:02_achievements/days_without_incident_0
kill @s
gamerule minecraft:show_death_messages true
