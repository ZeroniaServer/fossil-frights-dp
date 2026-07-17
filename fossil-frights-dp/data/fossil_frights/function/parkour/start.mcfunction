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
loot replace entity @s hotbar.0 loot fossil_frights:items/other/parkour_restart
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
function fossil_frights:parkour/update_display
