execute unless score $loot_burger ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/burger
scoreboard players set $loot_burger ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/burger
function fossil_frights:game/heists/loot/render
