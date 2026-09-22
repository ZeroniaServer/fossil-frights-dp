execute if score @s ff_security_gate_cache.width matches 1 positioned ~ ~0.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 1 positioned ~ ~0.5 ~ positioned ^ ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}

execute if score @s ff_security_gate_cache.width matches 2 positioned ~ ~0.5 ~ positioned ^0.5 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 2 positioned ~ ~0.5 ~ positioned ^0.5 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 2 positioned ~ ~0.5 ~ positioned ^-0.5 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 2 positioned ~ ~0.5 ~ positioned ^-0.5 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}

execute if score @s ff_security_gate_cache.width matches 3 positioned ~ ~0.5 ~ positioned ^1 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 3 positioned ~ ~0.5 ~ positioned ^1 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 3 positioned ~ ~0.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 3 positioned ~ ~0.5 ~ positioned ^ ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 3 positioned ~ ~0.5 ~ positioned ^-1 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 3 positioned ~ ~0.5 ~ positioned ^-1 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}

execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^1.5 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^1.5 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^0.5 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^0.5 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^-0.5 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^-0.5 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^-1.5 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 4 positioned ~ ~0.5 ~ positioned ^-1.5 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}

execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^2 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^2 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^1 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^1 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^ ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^-1 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^-1 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^-2 ^ ^1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}
execute if score @s ff_security_gate_cache.width matches 5 positioned ~ ~0.5 ~ positioned ^-2 ^ ^-1 if block ~ ~ ~ water run summon marker ~ ~ ~ {Tags:["ff_security_gate.update_water_block"]}

schedule function fossil_frights:animations/security_gate/open_close/update_water_blocks/schedule 1t append
