execute unless function fossil_frights:interactions/glowberry/click/check run return 0
execute positioned ~ ~0.1 ~ unless block ~ ~ ~ minecraft:cave_vines[berries=true] unless block ~ ~ ~ minecraft:cave_vines_plant[berries=true] run return 0
execute positioned ~ ~0.1 ~ run function fossil_frights:interactions/glowberry/collect with entity @s data.ff_glowberry
data remove entity @s interaction
