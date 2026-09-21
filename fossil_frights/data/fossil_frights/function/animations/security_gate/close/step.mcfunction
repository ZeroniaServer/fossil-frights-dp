execute if entity @s[tag=ff_security_gate.final_step] run tag @s remove ff_security_gate.closing
execute if entity @s[tag=ff_security_gate.final_step] run function fossil_frights:animations/security_gate/close/particles
execute if entity @s[tag=ff_security_gate.final_step] run return run tag @s remove ff_security_gate.final_step

scoreboard players operation @s ff_security_gate_cache.y -= @s ff_security_gate_cache.speed
execute if score @s ff_security_gate_cache.y < @s ff_security_gate_cache.min_y run scoreboard players operation @s ff_security_gate_cache.y = @s ff_security_gate_cache.min_y
execute if score @s ff_security_gate_cache.y = @s ff_security_gate_cache.min_y run tag @s add ff_security_gate.final_step

scoreboard players operation #open_amount ff_dummy = @s ff_security_gate_cache.max_y
scoreboard players operation #open_amount ff_dummy -= @s ff_security_gate_cache.y
item modify entity @s contents {function:"minecraft:set_custom_model_data",floats:{values:[{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#open_amount"},score:"ff_dummy",scale:0.001}],mode:"replace_all"}}

data modify storage fossil_frights:security_gate gate_data set value {}
execute store result storage fossil_frights:security_gate gate_data.y double 0.001 run scoreboard players get @s ff_security_gate_cache.y
function fossil_frights:animations/security_gate/open_close/teleport with storage fossil_frights:security_gate gate_data

execute unless predicate fossil_frights:entity/security_gate/type/garage positioned as @s run function fossil_frights:animations/security_gate/crush/normal_check
execute if predicate fossil_frights:entity/security_gate/type/garage positioned as @s run function fossil_frights:animations/security_gate/crush/garage_check

execute store result storage fossil_frights:security_gate gate_data.min_y int 0.001 run scoreboard players get @s ff_security_gate_cache.min_y
execute store result storage fossil_frights:security_gate gate_data.max_y int 0.001 store result storage fossil_frights:security_gate gate_data.max_y_minus_one int 0.00099999 run scoreboard players get @s ff_security_gate_cache.max_y
execute store result storage fossil_frights:security_gate gate_data.half_width float 0.5 run scoreboard players operation #width_minus_one ff_dummy = @s ff_security_gate_cache.width
execute store result storage fossil_frights:security_gate gate_data.width_minus_one float 1 run scoreboard players remove #width_minus_one ff_dummy 1
execute unless entity @s[tag=ff_security_gate.thick] if predicate fossil_frights:entity/security_gate/facing/north positioned as @s run function fossil_frights:animations/security_gate/open_close/fill_north_south with storage fossil_frights:security_gate gate_data
execute unless entity @s[tag=ff_security_gate.thick] if predicate fossil_frights:entity/security_gate/facing/south positioned as @s run function fossil_frights:animations/security_gate/open_close/fill_north_south with storage fossil_frights:security_gate gate_data
execute unless entity @s[tag=ff_security_gate.thick] if predicate fossil_frights:entity/security_gate/facing/east positioned as @s run function fossil_frights:animations/security_gate/open_close/fill_east_west with storage fossil_frights:security_gate gate_data
execute unless entity @s[tag=ff_security_gate.thick] if predicate fossil_frights:entity/security_gate/facing/west positioned as @s run function fossil_frights:animations/security_gate/open_close/fill_east_west with storage fossil_frights:security_gate gate_data
execute if entity @s[tag=ff_security_gate.thick] positioned as @s run function fossil_frights:animations/security_gate/open_close/fill_thick with storage fossil_frights:security_gate gate_data

scoreboard players remove @s ff_security_gate_sound_delay 1
execute if score @s ff_security_gate_sound_delay matches ..0 run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
execute if score @s ff_security_gate_sound_delay matches ..0 run scoreboard players set #delay ff_dummy 1000
execute if score @s ff_security_gate_sound_delay matches ..0 store result score @s ff_security_gate_sound_delay run scoreboard players operation #delay ff_dummy /= @s ff_security_gate_cache.speed
