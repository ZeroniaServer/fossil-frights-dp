kill @e[type=minecraft:silverfish,tag=ff_infestation_silverfish]
kill @e[type=minecraft:interaction,tag=ff_infestation_click]
tag @a remove ff_infestation_office
execute as @e[type=minecraft:text_display,tag=ff_infestation_count] run data modify entity @s text set value ""
scoreboard players reset @a ff_infestation_bite
