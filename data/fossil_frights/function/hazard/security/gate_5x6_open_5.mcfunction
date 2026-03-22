tag @s remove ff_gate_5x6_open_5
tag @s add ff_gate_5x6_wait_close
scoreboard players set @s ff_gate_timer 40

execute at @s rotated as @s run fill ^-1 ^5 ^0 ^1 ^5 ^0 minecraft:air replace
execute at @s run function fossil_frights:hazard/security/finalize_5x6_open
execute at @s run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.25 1.05
