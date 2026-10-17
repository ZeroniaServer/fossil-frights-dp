tag @s remove ff_security_gate.new

execute store result score @s ff_security_gate_cache.min_y run data get entity @s Pos[1] 1000
execute store result score @s ff_security_gate_cache.max_y run data get storage fossil_frights:security_gate gate_data.height 1000
scoreboard players operation @s ff_security_gate_cache.max_y += @s ff_security_gate_cache.min_y
execute store result score @s ff_security_gate_cache.width run data get storage fossil_frights:security_gate gate_data.width
execute store result score @s ff_security_gate_cache.speed run data get storage fossil_frights:security_gate gate_data.speed 50
scoreboard players operation @s ff_security_gate_cache.shut_y = @s ff_security_gate_cache.speed
scoreboard players operation @s ff_security_gate_cache.shut_y *= #5 ff_constant
scoreboard players operation @s ff_security_gate_cache.shut_y += @s ff_security_gate_cache.min_y

data modify storage fossil_frights:security_gate gate_data.min_y set compute default integer {type:"minecraft:div",left:{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.min_y"},right:1000}
data modify storage fossil_frights:security_gate gate_data.max_y set compute default integer {type:"minecraft:div",left:{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.max_y"},right:1000}
data modify storage fossil_frights:security_gate gate_data.max_y_minus_one set compute default integer {type:"minecraft:sub",left:{type:"minecraft:div",left:{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.max_y"},right:1000},right:1}
data modify storage fossil_frights:security_gate gate_data.half_width set compute default integer {type:"minecraft:div",left:{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.width"},right:2}
data modify storage fossil_frights:security_gate gate_data.width_minus_one set compute default integer {type:"minecraft:sub",left:{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.width"},right:1}
function fossil_frights:animations/security_gate/open_close/fill_remove with storage fossil_frights:security_gate gate_data

$execute positioned ~ ~$(height) ~ run function fossil_frights:util/entity/teleport
scoreboard players operation @s ff_security_gate_cache.y = @s ff_security_gate_cache.max_y
execute if data storage fossil_frights:security_gate gate_data{thick:true} run tag @s add ff_security_gate.thick
