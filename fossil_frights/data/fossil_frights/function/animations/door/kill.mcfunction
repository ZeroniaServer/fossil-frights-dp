tellraw @a {translate:"ff.death.front_door",with:[{selector:"@s"}]}
execute at @s run playsound minecraft:entity.player.hurt player @a ~ ~ ~
execute in minecraft:overworld run tp @s 0.50 80.00 0.50 0.00 0.00
