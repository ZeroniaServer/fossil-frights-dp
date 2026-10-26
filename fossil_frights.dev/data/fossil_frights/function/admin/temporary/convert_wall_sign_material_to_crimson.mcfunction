execute unless block ~ ~ ~ #wall_signs run return run tellraw @s {color:"red",text:"There is no wall sign here. Make sure your feet are inside a wall sign block."}
execute if block ~ ~ ~ crimson_wall_sign run return run tellraw @s {color:"red",text:"There is already a crimson sign here."}

data modify storage fossil_frights:sign block_entity_data set from block ~ ~ ~ {}

execute if block ~ ~ ~ #wall_signs[facing=north,waterlogged=false] run setblock ~ ~ ~ crimson_wall_sign[facing=north,waterlogged=false] strict
execute if block ~ ~ ~ #wall_signs[facing=east,waterlogged=false] run setblock ~ ~ ~ crimson_wall_sign[facing=east,waterlogged=false] strict
execute if block ~ ~ ~ #wall_signs[facing=south,waterlogged=false] run setblock ~ ~ ~ crimson_wall_sign[facing=south,waterlogged=false] strict
execute if block ~ ~ ~ #wall_signs[facing=west,waterlogged=false] run setblock ~ ~ ~ crimson_wall_sign[facing=west,waterlogged=false] strict
execute if block ~ ~ ~ #wall_signs[facing=north,waterlogged=true] run setblock ~ ~ ~ crimson_wall_sign[facing=north,waterlogged=true] strict
execute if block ~ ~ ~ #wall_signs[facing=east,waterlogged=true] run setblock ~ ~ ~ crimson_wall_sign[facing=east,waterlogged=true] strict
execute if block ~ ~ ~ #wall_signs[facing=south,waterlogged=true] run setblock ~ ~ ~ crimson_wall_sign[facing=south,waterlogged=true] strict
execute if block ~ ~ ~ #wall_signs[facing=west,waterlogged=true] run setblock ~ ~ ~ crimson_wall_sign[facing=west,waterlogged=true] strict

data modify block ~ ~ ~ {} merge from storage fossil_frights:sign block_entity_data
data remove storage fossil_frights:sign block_entity_data
