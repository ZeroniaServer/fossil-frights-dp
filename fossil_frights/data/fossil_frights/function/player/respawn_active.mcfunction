function fossil_frights:player/protection_disable
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:slowness 12 2 true
effect give @s minecraft:blindness 4 1 true
execute if predicate fossil_frights:player/inventory/key_disabled run function fossil_frights:key/refresh
execute unless predicate fossil_frights:player/inventory/key unless predicate fossil_frights:player/inventory/key_cooldown unless predicate fossil_frights:player/inventory/key_disabled run function fossil_frights:key/give
execute unless items entity @s armor.head carved_pumpkin run function fossil_frights:player/equip_security_hat
