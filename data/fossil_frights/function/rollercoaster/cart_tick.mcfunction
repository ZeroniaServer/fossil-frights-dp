execute if block ~ ~ ~ #minecraft:rails run function fossil_frights:rollercoaster/update_direction
execute unless block ~ ~ ~ #minecraft:rails if block ~ ~-1 ~ #minecraft:rails positioned ~ ~-1 ~ run function fossil_frights:rollercoaster/update_direction
execute if block ~ ~ ~ #minecraft:rails run function fossil_frights:rollercoaster/drive_on_rail
execute unless block ~ ~ ~ #minecraft:rails if block ~ ~-1 ~ #minecraft:rails run function fossil_frights:rollercoaster/drive_on_rail
