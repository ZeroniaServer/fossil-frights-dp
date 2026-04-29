execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
scoreboard players set @s ff_parkour_running 1
scoreboard players set @s ff_parkour_time 0
scoreboard players set @s ff_parkour_min 0
scoreboard players set @s ff_parkour_sec 0
scoreboard players set @s ff_parkour_sec_tens 0
scoreboard players set @s ff_parkour_sec_ones 0
scoreboard players set @s ff_parkour_centi 0
scoreboard players set @s ff_parkour_centi_tens 0
scoreboard players set @s ff_parkour_centi_ones 0
clear @s
item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick[minecraft:item_name={text:"Parkour Restart",color:"gold",italic:false},minecraft:lore=[{text:"Restart ",color:"yellow",italic:false,extra:[{text:"- Right Click",color:"white",italic:false}]},{text:"End ",color:"red",italic:false,extra:[{text:"- Drop",color:"white",italic:false}]}],minecraft:item_model="fossil-frights:general_items/parkour_restart",minecraft:custom_data={ff_parkour_restart:1b}] 1
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
function fossil_frights:parkour/update_display
