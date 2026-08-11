execute unless function fossil_frights:interactions/glowberry_vine/interact/check run return 0
execute positioned ~ ~0.1 ~ unless block ~ ~ ~ minecraft:cave_vines[berries=true] unless block ~ ~ ~ minecraft:cave_vines_plant[berries=true] run return 0
execute positioned ~ ~0.1 ~ run function fossil_frights:interactions/glowberry_vine/collect with entity @s data.ff_glowberry_vine
data remove entity @s interaction
