gamerule show_death_messages false
tellraw @a {translate:"ff.death.left_museum_bounds",with:[{selector:"@s"}],hover_event:{action:"show_text",value:{translate:"ff.death.left_museum_bounds.hover_text"}}}
kill @s
gamerule show_death_messages true
