# Close every security gate in staged passes.
schedule clear fossil_frights:hazard/security/garage_close_2
schedule clear fossil_frights:hazard/security/garage_close_3
schedule clear fossil_frights:hazard/security/garage_open_1
schedule clear fossil_frights:hazard/security/garage_open_0
schedule clear fossil_frights:hazard/security/close_3x3_mid
schedule clear fossil_frights:hazard/security/close_3x3_bottom
schedule clear fossil_frights:hazard/security/close_2x2_bottom
schedule clear fossil_frights:hazard/security/close_5x6_row4
schedule clear fossil_frights:hazard/security/close_5x6_row3
schedule clear fossil_frights:hazard/security/close_5x6_row2
schedule clear fossil_frights:hazard/security/close_5x6_row1
schedule clear fossil_frights:hazard/security/close_5x6_row0
schedule clear fossil_frights:hazard/security/open_3x3_mid
schedule clear fossil_frights:hazard/security/open_3x3_top
schedule clear fossil_frights:hazard/security/open_2x2_top
schedule clear fossil_frights:hazard/security/open_5x6_row1
schedule clear fossil_frights:hazard/security/open_5x6_row2
schedule clear fossil_frights:hazard/security/open_5x6_row3
schedule clear fossil_frights:hazard/security/open_5x6_row4
schedule clear fossil_frights:hazard/security/open_5x6_row5
scoreboard players set #gate_crush_lock ff_hazard_rng 0

execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s rotated as @s run fill ^-1 ^2 ^0 ^1 ^2 ^0 minecraft:iron_bars
execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s rotated as @s positioned ^-1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s rotated as @s positioned ^0 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s rotated as @s positioned ^1 ^2 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_3x3] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
place template fossil_frights:garage_door/1 -4 70 38
execute positioned -4 70 38 run playsound minecraft:block.piston.extend block @a[distance=..24] ~ ~ ~ 1.25 1.05
schedule function fossil_frights:hazard/security/garage_close_2 6t
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s run fill ^-1 ^1 ^0 ^0 ^1 ^0 minecraft:iron_bars
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s positioned ^-1 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s rotated as @s positioned ^0 ^1 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_2x2] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run function fossil_frights:hazard/security/place_5x6_1
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-2 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^-1 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^0 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^1 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s rotated as @s positioned ^2 ^5 ^0 as @a[distance=..0.75] run function fossil_frights:hazard/security/crush_player
execute as @e[type=minecraft:marker,tag=ff_gate_5x6] at @s run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.25 1.05

schedule function fossil_frights:hazard/security/close_3x3_mid 4t
schedule function fossil_frights:hazard/security/close_2x2_bottom 4t
schedule function fossil_frights:hazard/security/close_5x6_row4 9t
function fossil_frights:hazard/security/update_panel
