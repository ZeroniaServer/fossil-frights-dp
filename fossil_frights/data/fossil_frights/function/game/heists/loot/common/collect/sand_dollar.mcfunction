execute unless score $loot_sand_dollar ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/sand_dollar
scoreboard players set $loot_sand_dollar ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/sand_dollar
function fossil_frights:game/heists/loot/render
