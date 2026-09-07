function fossil_frights:tasks/medium/sponge_up_spill/cleanup
advancement revoke @a only fossil_frights:tasks/medium/sponge_up_spill/click
execute as @e[type=item_display,tag=ff_task_slippy_sign] run data merge entity @s {view_range:0}

fill -15 80 69 -14 80 71 minecraft:air
fill -16 79 68 -14 79 71 minecraft:red_nether_bricks
setblock -15 79 68 minecraft:nether_quartz_ore
setblock -16 79 69 minecraft:nether_quartz_ore
setblock -14 79 69 minecraft:nether_quartz_ore
setblock -15 79 70 minecraft:nether_quartz_ore
setblock -14 79 71 minecraft:nether_quartz_ore
setblock -16 79 71 minecraft:nether_quartz_ore
