function fossil_frights:interactions/glowberry/set_block/empty with entity @s data.ff_glowberry
loot spawn ~ ~ ~ loot fossil_frights:items/glowberry
playsound minecraft:block.cave_vines.pick_berries player @a[distance=..8] ~ ~ ~ 1 1
