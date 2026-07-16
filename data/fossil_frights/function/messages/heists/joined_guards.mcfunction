execute if entity @s[tag=ff_join_random] run return run function fossil_frights:messages/heists/joined_guards_random
tellraw @a [{"translate":"ff.messages.info","color":"yellow","with":[{"translate":"ff.messages.info.join_team","with":[{"selector":"@s","color":"yellow"},{"translate":"ff.messages.info.team.guards","color":"gold"}]}]}]
