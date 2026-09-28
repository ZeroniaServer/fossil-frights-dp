execute unless block ~ ~ ~ minecraft:air run return 0
execute unless block ~ ~-1 ~ #fossil_frights:is_full_cube unless block ~ ~-1 ~ #slabs unless block ~ ~-1 ~ #stairs unless block ~ ~-1 ~ dirt_path run return 0

execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["ff_water_balloon.temporary_water"]}
setblock ~ ~ ~ water[level=7] strict
schedule function fossil_frights:items/water_balloon/temporary_water/ticking_temporary_water 1t

return 1
