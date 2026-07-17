execute unless score $loot_fishing_rod ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/low/fishing_rod
scoreboard players set $loot_fishing_rod ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/low/sync/fishing_rod
function fossil_frights:game/heists/loot/render
