execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
function fossil_frights:ant_fight/lobby_sneak/reset
scoreboard players add @s ff_ant_score 0
tag @s add ff_ant_fight
scoreboard players set @s ff_ant_fight 1
attribute @s minecraft:scale base set 0.5
clear @s
give @s minecraft:snowball[minecraft:item_name={text:"Infinileaf",color:"green",italic:false},minecraft:lore=[{text:"Shoot ",color:"dark_green",italic:false,extra:[{text:"- Right Click",color:"white",italic:false}]},{text:"Leave ",color:"red",italic:false,extra:[{text:"- Drop",color:"white",italic:false}]}],minecraft:use_cooldown={seconds:0.35f,cooldown_group:"fossil_frights:infinileaf"},minecraft:custom_data={ff_ant_leaf:1b}] 1
scoreboard players operation @s ff_ant_leaf_seen = @s ff_ant_leaf_use
scoreboard players set @s ff_ant_immunity 35
