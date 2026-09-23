scoreboard players set @s ff_parkour_running 0
scoreboard players set @s ff_parkour_time 0
scoreboard players set @s ff_parkour_min 0
scoreboard players set @s ff_parkour_sec 0
scoreboard players set @s ff_parkour_sec_tens 0
scoreboard players set @s ff_parkour_sec_ones 0
scoreboard players set @s ff_parkour_centi 0
scoreboard players set @s ff_parkour_centi_tens 0
scoreboard players set @s ff_parkour_centi_ones 0
clear @s *[minecraft:custom_data~{itemID:"parkour_restart"}]
execute unless entity @s[tag=ff_skip_plushie_restore] run function fossil_frights:items/plushies/restore
tag @s remove ff_dropped_parkour_restart
