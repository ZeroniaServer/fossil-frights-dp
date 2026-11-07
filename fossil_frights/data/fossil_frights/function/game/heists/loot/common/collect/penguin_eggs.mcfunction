execute unless score $loot_penguin_eggs ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/penguin_eggs
scoreboard players set $loot_penguin_eggs ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/penguin_eggs
function fossil_frights:game/heists/loot/render
