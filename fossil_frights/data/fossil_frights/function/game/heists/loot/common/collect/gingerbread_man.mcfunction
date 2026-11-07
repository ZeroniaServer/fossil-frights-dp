execute unless score $loot_gingerbread_man ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/gingerbread_man
scoreboard players set $loot_gingerbread_man ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/gingerbread_man
function fossil_frights:game/heists/loot/render
