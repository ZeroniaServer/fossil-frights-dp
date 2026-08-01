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
loot replace entity @s hotbar.0 loot fossil_frights:items/other/temple_run_restart
scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
function fossil_frights:temple_run/update_display
function fossil_frights:temple_run/music/start
