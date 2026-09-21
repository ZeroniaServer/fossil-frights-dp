gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.security_gate","with":[{"selector":"@s","separator":""}],"color":"white"}]
advancement grant @s only fossil_frights:02_achievements/days_without_incident_0
kill @s
gamerule minecraft:show_death_messages true
