execute unless score $loot_t_rex_skull ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/high_heavy/t_rex_skull
scoreboard players set $loot_t_rex_skull ff_heist_loot_state 2
function fossil_frights:game/heists/loot/high_heavy/t_rex_skull/clear_collision
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4

function fossil_frights:game/heists/loot/high_heavy/sync/t_rex_skull
function fossil_frights:game/heists/loot/render
