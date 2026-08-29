execute unless score $loot_treasure_chest ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/heavy/treasure_chest
scoreboard players set $loot_treasure_chest ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
setblock -2 82 66 minecraft:water
function fossil_frights:game/heists/loot/heavy/sync/treasure_chest
function fossil_frights:game/heists/loot/render
