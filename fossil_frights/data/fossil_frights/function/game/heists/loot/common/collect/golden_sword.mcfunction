execute unless score $loot_golden_sword ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/golden_sword
scoreboard players set $loot_golden_sword ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/golden_sword
function fossil_frights:game/heists/loot/render
