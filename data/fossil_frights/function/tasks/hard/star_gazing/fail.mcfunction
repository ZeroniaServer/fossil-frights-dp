gamerule minecraft:show_death_messages false
tellraw @a [{"selector":"@s","separator":"","color":"white"},{"text":" died looking at a star that was too bright","color":"white"}]
kill @s
gamerule minecraft:show_death_messages true
