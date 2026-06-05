execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_thief] run return run function fossil_frights:game/heists/death_thief
execute if score $heist_mode_active ff_game_state matches 1 if entity @s[tag=ff_heist_guard] run return run function fossil_frights:game/heists/death_guard
function fossil_frights:player/protection_disable
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:slowness 12 2 true
effect give @s minecraft:blindness 4 1 true
execute if data entity @s {Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_disabled:1b}}}]} run function fossil_frights:key/refresh
execute unless data entity @s {Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key:1b}}}]} unless data entity @s {Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} unless data entity @s {Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_disabled:1b}}}]} run function fossil_frights:key/give
execute unless data entity @s {Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]} run function fossil_frights:player/equip_security_hat
