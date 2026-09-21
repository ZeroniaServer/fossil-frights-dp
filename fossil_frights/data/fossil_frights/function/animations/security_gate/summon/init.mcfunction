tag @s remove ff_security_gate.new

execute store result score @s ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gate_data.speed 1000

execute store result score @s ff_security_gate_cache.min_y run data get entity @s Pos[1] 1000
execute store result score @s ff_security_gate_cache.max_y run data get storage fossil_frights:security_gate gate_data.height 1000
scoreboard players operation @s ff_security_gate_cache.max_y += @s ff_security_gate_cache.min_y
execute store result score @s ff_security_gate_cache.width run data get storage fossil_frights:security_gate gate_data.width
execute store result score @s ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gate_data.speed 50

execute store result storage fossil_frights:security_gate gate_data.min_y int 0.001 run scoreboard players get @s ff_security_gate_cache.min_y
execute store result storage fossil_frights:security_gate gate_data.max_y int 0.001 store result storage fossil_frights:security_gate gate_data.max_y_minus_one int 0.00099999 run scoreboard players get @s ff_security_gate_cache.max_y
execute store result storage fossil_frights:security_gate gate_data.half_width float 0.5 run scoreboard players operation #width_minus_one ff_dummy = @s ff_security_gate_cache.width
execute store result storage fossil_frights:security_gate gate_data.width_minus_one float 1 run scoreboard players remove #width_minus_one ff_dummy 1
function fossil_frights:animations/security_gate/open_close/fill_remove with storage fossil_frights:security_gate gate_data

$execute positioned ~ ~$(height) ~ run function fossil_frights:util/entity/teleport
scoreboard players operation @s ff_security_gate_cache.y = @s ff_security_gate_cache.max_y
execute if data storage fossil_frights:security_gate gate_data{thick:true} run tag @s add ff_security_gate.thick
