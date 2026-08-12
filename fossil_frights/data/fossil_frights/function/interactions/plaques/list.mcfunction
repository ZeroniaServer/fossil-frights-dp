# List plaque IDs and positions.
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=ff_plaque] run data get entity @s data.ff_plaque.name
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=ff_plaque] run data get entity @s Pos
execute in minecraft:overworld as @e[type=minecraft:interaction,tag=ff_plaque] run tellraw @a [{text:"Plaque ",color:"white"},{nbt:"data.ff_plaque.name",entity:"@s",color:"white"},{text:" at ",color:"white"},{nbt:"Pos",entity:"@s",color:"white"}]
