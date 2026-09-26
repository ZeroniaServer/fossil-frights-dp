execute at @s run playsound minecraft:entity.item.break master @a[distance=..5] ~ ~ ~ 1 1
tag @s add ff_hoverboard_breaking
$loot replace entity @s $(slot) loot fossil_frights:items/storage/scrap_metal
function fossil_frights:items/hoverboard/disable
tag @s remove ff_hoverboard_breaking
