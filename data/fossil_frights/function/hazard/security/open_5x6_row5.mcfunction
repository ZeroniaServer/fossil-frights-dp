# Finish opening every 5x6 gate at the top row.
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s rotated as @s run fill ^-1 ^5 ^0 ^1 ^5 ^0 minecraft:air replace
function fossil_frights:hazard/security/finalize_5x6_open
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
