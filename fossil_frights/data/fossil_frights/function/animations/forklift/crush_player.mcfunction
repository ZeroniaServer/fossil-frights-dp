gamerule minecraft:show_death_messages false
tellraw @a {translate:"ff.death.forklift",with:[{selector:"@s"}]}
kill @s
gamerule minecraft:show_death_messages true
