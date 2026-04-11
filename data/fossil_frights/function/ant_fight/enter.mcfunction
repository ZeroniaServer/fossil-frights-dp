execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
scoreboard players add @s ff_ant_score 0
tag @s add ff_ant_fight
scoreboard players set @s ff_ant_fight 1
attribute @s minecraft:scale base set 0.5
clear @s
give @s minecraft:snowball[minecraft:item_name={text:"Infinileaf",color:"green",italic:false},minecraft:lore=[{text:"",extra:["infinileaf"]}],minecraft:tooltip_display={hidden_components:["minecraft:lore"]},minecraft:custom_data={ff_ant_leaf:1b}] 1
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
scoreboard players set @s ff_ant_immunity 35
