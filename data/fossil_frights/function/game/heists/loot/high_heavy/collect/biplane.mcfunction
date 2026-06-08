execute unless score $loot_biplane ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/high_heavy/biplane
scoreboard players set $loot_biplane ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
playsound minecraft:block.chain.break player @a[tag=ff_heist_thief] ~ ~ ~ 0.9 1.0
function fossil_frights:game/heists/loot/high_heavy/sync/biplane
function fossil_frights:game/heists/loot/render
