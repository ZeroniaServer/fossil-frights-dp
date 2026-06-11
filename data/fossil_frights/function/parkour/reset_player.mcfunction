scoreboard players set @s ff_parkour_running 0
scoreboard players set @s ff_parkour_time 0
scoreboard players set @s ff_parkour_min 0
scoreboard players set @s ff_parkour_sec 0
scoreboard players set @s ff_parkour_sec_tens 0
scoreboard players set @s ff_parkour_sec_ones 0
scoreboard players set @s ff_parkour_centi 0
scoreboard players set @s ff_parkour_centi_tens 0
scoreboard players set @s ff_parkour_centi_ones 0
execute if items entity @s weapon.mainhand minecraft:amethyst_shard[custom_data~{ff_parkour_restart:1b}] run item replace entity @s weapon.mainhand with air
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:amethyst_shard",components:{"minecraft:custom_data":{ff_parkour_restart:1b}}}]} run item replace entity @s weapon.offhand with air
clear @s minecraft:amethyst_shard[minecraft:custom_data={ff_parkour_restart:1b}]
execute unless entity @s[tag=ff_skip_plushie_restore] run function fossil_frights:tasks/final/plushies/restore
title @s actionbar ""
