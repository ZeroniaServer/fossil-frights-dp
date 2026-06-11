scoreboard players set @s ff_temple_run_running 0
scoreboard players set @s ff_temple_run_time 0
scoreboard players set @s ff_temple_run_min 0
scoreboard players set @s ff_temple_run_sec 0
scoreboard players set @s ff_temple_run_sec_tens 0
scoreboard players set @s ff_temple_run_sec_ones 0
scoreboard players set @s ff_temple_run_centi 0
scoreboard players set @s ff_temple_run_centi_tens 0
scoreboard players set @s ff_temple_run_centi_ones 0
clear @s minecraft:amethyst_shard[minecraft:custom_data~{ff_temple_run_restart:1b}]
execute unless entity @s[tag=ff_skip_plushie_restore] run function fossil_frights:tasks/final/plushies/restore
title @s actionbar ""
