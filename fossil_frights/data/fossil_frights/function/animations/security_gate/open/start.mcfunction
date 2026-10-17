execute unless entity @s[tag=ff_security_gate.opening] unless entity @s[tag=ff_security_gate.silent] if predicate fossil_frights:entity/security_gate/type/5x6 run function fossil_frights:animations/security_gate/play_sound {sound:"fossil_frights:security_gate.moving",pitch: 1.0071429}
execute unless entity @s[tag=ff_security_gate.opening] unless entity @s[tag=ff_security_gate.silent] unless predicate fossil_frights:entity/security_gate/type/5x6 if score @s ff_security_gate_cache.width matches 4 run function fossil_frights:animations/security_gate/play_sound {sound:"fossil_frights:security_gate.moving.medium",pitch: 1}
execute unless entity @s[tag=ff_security_gate.opening] unless entity @s[tag=ff_security_gate.silent] unless predicate fossil_frights:entity/security_gate/type/5x6 unless score @s ff_security_gate_cache.width matches 4 if predicate fossil_frights:entity/security_gate/type/garage run function fossil_frights:animations/security_gate/play_sound {sound:"fossil_frights:security_gate.moving.medium",pitch: 1}
execute unless entity @s[tag=ff_security_gate.opening] unless entity @s[tag=ff_security_gate.silent] unless predicate fossil_frights:entity/security_gate/type/5x6 unless score @s ff_security_gate_cache.width matches 4 unless predicate fossil_frights:entity/security_gate/type/garage run function fossil_frights:animations/security_gate/play_sound {sound:"fossil_frights:security_gate.moving.short",pitch: 1}
tag @s remove ff_security_gate.silent
tag @s remove ff_security_gate.closed
tag @s remove ff_security_gate.closing
tag @s add ff_security_gate.opening
schedule function fossil_frights:animations/security_gate/open/step_all 1t append
tag @s remove ff_security_gate.manually_opened
scoreboard players reset @s ff_security_gate_close_timestamp
