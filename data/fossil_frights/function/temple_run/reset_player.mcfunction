scoreboard players set @s ff_temple_run_running 0
scoreboard players set @s ff_temple_run_time 0
scoreboard players set @s ff_temple_run_min 0
scoreboard players set @s ff_temple_run_sec 0
scoreboard players set @s ff_temple_run_sec_tens 0
scoreboard players set @s ff_temple_run_sec_ones 0
scoreboard players set @s ff_temple_run_centi 0
scoreboard players set @s ff_temple_run_centi_tens 0
scoreboard players set @s ff_temple_run_centi_ones 0
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_temple_run_restart:1b}}}} run item replace entity @s weapon.mainhand with air
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_temple_run_restart:1b}}}]} run item replace entity @s weapon.offhand with air
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_temple_run_restart:1b}]
function fossil_frights:tasks/final/plushies/restore
title @s actionbar ""
