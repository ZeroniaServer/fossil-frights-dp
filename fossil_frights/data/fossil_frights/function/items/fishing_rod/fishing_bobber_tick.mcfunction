execute on origin run tag @s add ff_fishing_rod.origin

execute positioned ~ ~-1.44 ~ if entity @e[limit=1,type=minecraft:player,distance=..0.001,gamemode=adventure,tag=!ff_fishing_rod.origin,predicate=!fossil_frights:player/is_sneaking] run return run function fossil_frights:items/fishing_rod/attack
execute positioned ~ ~-1.2 ~ if entity @e[limit=1,type=minecraft:player,distance=..0.001,gamemode=adventure,tag=!ff_fishing_rod.origin,predicate=fossil_frights:player/is_sneaking] run return run function fossil_frights:items/fishing_rod/attack

scoreboard players set #crawling ff_dummy 0
execute positioned ~ ~-0.48 ~ as @e[limit=1,type=minecraft:player,distance=..0.001,gamemode=adventure,tag=!ff_fishing_rod.origin] positioned as @s positioned ~ ~0.601 ~ unless entity @s[dx=0] run scoreboard players set #crawling ff_dummy 1
execute if score #crawling ff_dummy matches 1 positioned ~ ~-0.48 ~ if entity @e[limit=1,type=minecraft:player,distance=..0.001,gamemode=adventure,tag=!ff_fishing_rod.origin] run return run function fossil_frights:items/fishing_rod/attack

execute on origin run tag @s remove ff_fishing_rod.origin
