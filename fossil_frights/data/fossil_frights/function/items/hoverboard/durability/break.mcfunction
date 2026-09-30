execute at @s run playsound minecraft:entity.item.break master @a[distance=..5] ~ ~ ~ 1 1
tag @s add ff_hoverboard_breaking
loot replace block 0 0 0 container.0 1 loot fossil_frights:items/storage/scrap_metal
item fill entity @s fossil_frights:player/filtered/hoverboard_active_broken from block 0 0 0 container.0
function fossil_frights:items/hoverboard/disable
tag @s remove ff_hoverboard_breaking
