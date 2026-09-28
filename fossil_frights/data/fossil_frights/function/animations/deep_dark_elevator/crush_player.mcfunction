gamerule minecraft:show_death_messages false
tellraw @a {translate:"ff.death.deep_dark_elevator",with:[{selector:"@s"}]}
kill @s
gamerule minecraft:show_death_messages true
