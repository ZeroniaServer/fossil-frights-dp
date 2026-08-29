execute unless score $loot_chocolate_cake ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/chocolate_cake
scoreboard players set $loot_chocolate_cake ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/chocolate_cake
function fossil_frights:game/heists/loot/render
