# Open every 3x3 gate in reverse: bottom, middle, then top.
schedule clear fossil_frights:hazard/security/close_mid
schedule clear fossil_frights:hazard/security/close_bottom
schedule clear fossil_frights:hazard/security/open_mid
schedule clear fossil_frights:hazard/security/open_top

execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^0 ^0 ^1 ^0 ^0 minecraft:air replace minecraft:iron_bars

schedule function fossil_frights:hazard/security/open_mid 4t
