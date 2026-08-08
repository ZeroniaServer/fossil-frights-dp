execute unless entity @s[team=ff_thief,gamemode=!spectator] unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
execute if entity @s[tag=ff_gate_crushed] run return 0
tag @s add ff_gate_crushed
gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.garage_door","with":[{"selector":"@s","separator":""}],"color":"white"}]
advancement grant @s only fossil_frights:02_achievements/days_without_incident_0
kill @s
gamerule minecraft:show_death_messages true
schedule function fossil_frights:hazard/security/clear_crushed_tags 1t replace
