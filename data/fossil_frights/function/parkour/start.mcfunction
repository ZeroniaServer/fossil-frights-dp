execute unless entity @s[gamemode=adventure] run return 0
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
item replace entity @s hotbar.0 with minecraft:amethyst_shard[minecraft:item_name={text:"Parkour Restart",color:"gold",italic:false},minecraft:lore=[{text:"Restart ",color:"yellow",italic:false,extra:[{text:"- Right Click",color:"white",italic:false}]},{text:"End ",color:"red",italic:false,extra:[{text:"- Drop",color:"white",italic:false}]},{text:"",extra:["parkour_restart"]}],minecraft:tooltip_display={hidden_components:["minecraft:lore"]},minecraft:item_model="fossil-frights:general_items/parkour_restart",minecraft:consumable={consume_seconds:0.001,animation:"none",sound:"minecraft:entity.item.pickup",has_consume_particles:false},minecraft:custom_data={ff_parkour_restart:1b}] 1
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
function fossil_frights:parkour/update_display
