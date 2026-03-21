# Close every 3x3 gate in three passes: top, middle, then bottom.
schedule clear fossil_frights:hazard/security/close_mid
schedule clear fossil_frights:hazard/security/close_bottom
schedule clear fossil_frights:hazard/security/open_mid
schedule clear fossil_frights:hazard/security/open_top

execute as @e[type=minecraft:armor_stand,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:iron_bars

schedule function fossil_frights:hazard/security/close_mid 4t
