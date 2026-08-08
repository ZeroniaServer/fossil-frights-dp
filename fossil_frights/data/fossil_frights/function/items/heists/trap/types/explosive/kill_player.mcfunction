gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.explosive_trap","with":[{"selector":"@s","separator":""}],"color":"white"}]
kill @s
gamerule minecraft:show_death_messages true
