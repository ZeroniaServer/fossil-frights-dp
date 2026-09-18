execute unless score $loot_popcorn ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/common/popcorn
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/heists/play
scoreboard players set $loot_popcorn ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/common/sync/popcorn
function fossil_frights:game/heists/loot/render
