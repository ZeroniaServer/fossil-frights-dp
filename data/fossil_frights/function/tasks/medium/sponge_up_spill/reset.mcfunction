function fossil_frights:tasks/medium/sponge_up_spill/cleanup
advancement revoke @a only fossil_frights:sponge_up_spill_click
execute as @e[type=item_display,tag=ff_task_slippy_sign] run data merge entity @s {view_range:0}
setblock -15 79 70 minecraft:mangrove_planks
setblock -15 79 69 minecraft:mangrove_planks
setblock -16 79 69 minecraft:mangrove_planks
setblock -16 79 68 minecraft:mangrove_planks
