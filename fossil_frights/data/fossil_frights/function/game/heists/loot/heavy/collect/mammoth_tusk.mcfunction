execute unless score $loot_mammoth_tusk ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/heavy/mammoth_tusk
scoreboard players set $loot_mammoth_tusk ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4

function fossil_frights:game/heists/loot/heavy/sync/mammoth_tusk
function fossil_frights:game/heists/loot/render
