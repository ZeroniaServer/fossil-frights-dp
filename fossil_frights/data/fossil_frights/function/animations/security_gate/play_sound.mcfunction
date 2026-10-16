$data modify storage fossil_frights:security_gate sound_data set value {sound:"$(sound)",pitch:$(pitch)}
data modify storage fossil_frights:security_gate sound_data.gate_bottom set compute default integer {type:"minecraft:div",left:{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.min_y"},right:1000}
data modify storage fossil_frights:security_gate sound_data.origin set compute default integer {type:"minecraft:div",left:{type:"minecraft:avg",inputs:[{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.min_y"},{type:"minecraft:score",target:"this",score:"ff_security_gate_cache.max_y"}]},right:1000}
execute at @s run function fossil_frights:animations/security_gate/play_sound_macro with storage fossil_frights:security_gate sound_data
data remove storage fossil_frights:security_gate sound_data
