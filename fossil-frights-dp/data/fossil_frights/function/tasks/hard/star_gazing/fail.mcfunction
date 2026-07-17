gamerule minecraft:show_death_messages false
tellraw @a [{"translate":"ff.death.star_gazing","with":[{"selector":"@s","separator":"","color":"white"}],"color":"white"}]
kill @s
gamerule minecraft:show_death_messages true
