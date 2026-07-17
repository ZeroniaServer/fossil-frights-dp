scoreboard players set @s ff_temple_run_running 0
scoreboard players set @s ff_temple_run_time 0
scoreboard players set @s ff_temple_run_min 0
scoreboard players set @s ff_temple_run_sec 0
scoreboard players set @s ff_temple_run_sec_tens 0
scoreboard players set @s ff_temple_run_sec_ones 0
scoreboard players set @s ff_temple_run_centi 0
scoreboard players set @s ff_temple_run_centi_tens 0
scoreboard players set @s ff_temple_run_centi_ones 0
clear @s *[minecraft:custom_data~{itemID:"temple_run_restart"}]
execute unless entity @s[tag=ff_skip_plushie_restore] run function fossil_frights:items/plushies/restore
title @s actionbar ""
tag @s remove ff_dropped_temple_run_restart
