scoreboard players set @s ff_parkour_running 1
scoreboard players set @s ff_parkour_time 0
scoreboard players set @s ff_parkour_sec 0
scoreboard players set @s ff_parkour_centi 0
scoreboard players set @s ff_parkour_centi_tens 0
scoreboard players set @s ff_parkour_centi_ones 0
clear @s
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:item_name={text:"Restart Course",color:"green",italic:false},minecraft:lore=[{text:"",extra:["parkour_restart"]}],minecraft:tooltip_display={hidden_components:["minecraft:lore"]},minecraft:custom_data={ff_parkour_restart:1b}] 1
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
function fossil_frights:parkour/update_display

