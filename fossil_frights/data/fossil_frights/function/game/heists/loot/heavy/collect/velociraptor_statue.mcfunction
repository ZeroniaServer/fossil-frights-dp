execute unless score $loot_velociraptor_statue ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/heavy/velociraptor_statue
scoreboard players set $loot_velociraptor_statue ff_heist_loot_state 2
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4

function fossil_frights:game/heists/loot/heavy/sync/velociraptor_statue
function fossil_frights:game/heists/loot/render
