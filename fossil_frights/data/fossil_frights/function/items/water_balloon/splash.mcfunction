kill @s

# fx
playsound minecraft:entity.player.splash neutral @a ~ ~ ~ 1 1.1
particle minecraft:splash ~ ~ ~ 1 1 1 0 30

# extinguish nearby players
execute as @e[distance=..4,type=player,gamemode=!spectator] run function fossil_frights:util/player/extinguish

# always soften falling players' landing if possible
execute positioned ~ ~2 ~ at @e[distance=..3,type=player,gamemode=!spectator,predicate=!fossil_frights:entity/on_ground] run function fossil_frights:items/water_balloon/splash_fall

# place puddle of water
execute positioned ~ ~1 ~ run function fossil_frights:items/water_balloon/splash_water_layer
execute positioned ~ ~ ~ run function fossil_frights:items/water_balloon/splash_water_layer
execute positioned ~ ~-1 ~ run function fossil_frights:items/water_balloon/splash_water_layer
execute positioned ~ ~-2 ~ run function fossil_frights:items/water_balloon/splash_water_layer
