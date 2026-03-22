execute if score security ff_hazard_active matches 0 run return 0

# If a player is within 3 blocks of an idle gate and near a powered mangrove button,
# trigger the nearest gate only. Buttons are expected at head height.
execute as @a at @s positioned ~-2 ~1 ~-2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-1 ~1 ~-2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~ ~1 ~-2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~1 ~1 ~-2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~2 ~1 ~-2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-2 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~2 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-2 ~1 ~ if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~2 ~1 ~ if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-2 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~2 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-2 ~1 ~2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~-1 ~1 ~2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~ ~1 ~2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~1 ~1 ~2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button
execute as @a at @s positioned ~2 ~1 ~2 if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function fossil_frights:hazard/security/try_trigger_player_button

scoreboard players remove @e[type=minecraft:armor_stand,tag=ff_gate_busy,scores={ff_gate_timer=1..}] ff_gate_timer 1

execute as @e[type=minecraft:armor_stand,tag=ff_gate_open_mid,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_open_mid
execute as @e[type=minecraft:armor_stand,tag=ff_gate_open_top,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_open_top
execute as @e[type=minecraft:armor_stand,tag=ff_gate_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_close_top
execute as @e[type=minecraft:armor_stand,tag=ff_gate_close_mid,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_close_mid
execute as @e[type=minecraft:armor_stand,tag=ff_gate_close_bottom,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_close_bottom
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2_open_top,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_2x2_open_top
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_2x2_close_top
execute as @e[type=minecraft:armor_stand,tag=ff_gate_2x2_close_bottom,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_2x2_close_bottom
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_open_1,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_1
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_open_2,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_2
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_open_3,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_3
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_open_4,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_4
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_open_5,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_5
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_5
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_close_4,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_4
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_close_3,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_3
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_close_2,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_2
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_close_1,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_1
execute as @e[type=minecraft:armor_stand,tag=ff_gate_5x6_close_0,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_0
