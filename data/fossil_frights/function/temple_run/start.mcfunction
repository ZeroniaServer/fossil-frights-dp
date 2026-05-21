execute unless entity @s[gamemode=adventure] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
scoreboard players set @s ff_temple_run_running 1
scoreboard players set @s ff_temple_run_time 0
scoreboard players set @s ff_temple_run_min 0
scoreboard players set @s ff_temple_run_sec 0
scoreboard players set @s ff_temple_run_sec_tens 0
scoreboard players set @s ff_temple_run_sec_ones 0
scoreboard players set @s ff_temple_run_centi 0
scoreboard players set @s ff_temple_run_centi_tens 0
scoreboard players set @s ff_temple_run_centi_ones 0
clear @s
item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_name={text:"Temple Run Restart",color:"yellow",italic:false},minecraft:lore=[{text:"Restart ",color:"yellow",italic:false,extra:[{text:"- Right Click",color:"white",italic:false}]},{text:"End ",color:"red",italic:false,extra:[{text:"- Drop",color:"white",italic:false}]}],minecraft:item_model="fossil-frights:general_items/temple_run_restart",minecraft:custom_data={ff_temple_run_restart:1b}] 1
scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
function fossil_frights:temple_run/update_display
