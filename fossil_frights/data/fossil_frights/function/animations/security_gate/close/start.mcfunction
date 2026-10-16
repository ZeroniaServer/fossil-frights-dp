execute unless entity @s[tag=ff_security_gate.closing] if predicate fossil_frights:entity/security_gate/type/5x6 run execute at @s positioned ~ ~-6 ~ run playsound fossil_frights:security_gate.moving block @a[distance=..6] ~ ~ ~ 1 1.0071429
execute unless entity @s[tag=ff_security_gate.closing] unless predicate fossil_frights:entity/security_gate/type/5x6 if score @s ff_security_gate_cache.width matches 4 run execute at @s positioned ~ ~-6 ~ run playsound fossil_frights:security_gate.moving.medium block @a[distance=..6] ~ ~ ~ 1 1
execute unless entity @s[tag=ff_security_gate.closing] unless predicate fossil_frights:entity/security_gate/type/5x6 unless score @s ff_security_gate_cache.width matches 4 if predicate fossil_frights:entity/security_gate/type/garage run execute at @s positioned ~ ~-6 ~ run playsound fossil_frights:security_gate.moving.medium block @a[distance=..6] ~ ~ ~ 1 1
execute unless entity @s[tag=ff_security_gate.closing] unless predicate fossil_frights:entity/security_gate/type/5x6 unless score @s ff_security_gate_cache.width matches 4 unless predicate fossil_frights:entity/security_gate/type/garage run execute at @s positioned ~ ~-6 ~ run playsound fossil_frights:security_gate.moving.short block @a[distance=..6] ~ ~ ~ 1 1
tag @s remove ff_security_gate.sound_shut_played
tag @s remove ff_security_gate.opening
tag @s add ff_security_gate.closing
schedule function fossil_frights:animations/security_gate/close/step_all 1t append
tag @s remove ff_security_gate.manually_opened
scoreboard players reset @s ff_security_gate_close_timestamp
