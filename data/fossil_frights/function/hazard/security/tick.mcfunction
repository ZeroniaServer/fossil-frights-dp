execute if score security ff_hazard_active matches 0 run return 0

execute if block -28 71 39 minecraft:pale_oak_button[powered=true] positioned -28 71 39 run playsound minecraft:block.beacon.power_select master @a[distance=..24] ~ ~ ~ 1.8 1.25
execute if block -28 71 39 minecraft:pale_oak_button[powered=true] run function fossil_frights:hazard/stop/security
execute if score security ff_hazard_active matches 0 run return 0
scoreboard players remove #security_indicator_timer ff_hazard_rng 1
execute if score #security_indicator_timer ff_hazard_rng matches ..0 run scoreboard players set #security_indicator_timer ff_hazard_rng 8
execute if score #security_indicator_timer ff_hazard_rng matches 8 run scoreboard players add #security_indicator ff_hazard_rng 1
execute if score #security_indicator ff_hazard_rng matches 2.. run scoreboard players set #security_indicator ff_hazard_rng 0
execute if score #security_indicator_timer ff_hazard_rng matches 8 if score #security_indicator ff_hazard_rng matches 0 run function fossil_frights:hazard/security/set_indicator_alert_0
execute if score #security_indicator_timer ff_hazard_rng matches 8 if score #security_indicator ff_hazard_rng matches 1 run function fossil_frights:hazard/security/set_indicator_alert_1
scoreboard players remove #security_alarm_timer ff_hazard_rng 1
execute if score #security_alarm_timer ff_hazard_rng matches ..0 run scoreboard players set #security_alarm_timer ff_hazard_rng 12
execute if score #security_alarm_timer ff_hazard_rng matches 12 positioned -27 71 40 run playsound minecraft:block.note_block.bit master @a[distance=..20] ~ ~ ~ 3.0 1.3

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

scoreboard players remove @e[type=minecraft:marker,tag=ff_gate_busy,scores={ff_gate_timer=1..}] ff_gate_timer 1

execute as @e[type=minecraft:marker,tag=ff_gate_open_mid,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_open_mid
execute as @e[type=minecraft:marker,tag=ff_gate_open_top,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_open_top
execute as @e[type=minecraft:marker,tag=ff_gate_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_close_top
execute as @e[type=minecraft:marker,tag=ff_gate_close_mid,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_close_mid
execute as @e[type=minecraft:marker,tag=ff_gate_close_bottom,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_3x3_close_bottom
execute as @e[type=minecraft:marker,tag=ff_garage_open_mid,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_garage_open_mid
execute as @e[type=minecraft:marker,tag=ff_garage_open_top,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_garage_open_top
execute as @e[type=minecraft:marker,tag=ff_garage_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_garage_close_top
execute as @e[type=minecraft:marker,tag=ff_garage_close_mid,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_garage_close_mid
execute as @e[type=minecraft:marker,tag=ff_garage_close_bottom,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_garage_close_bottom
execute as @e[type=minecraft:marker,tag=ff_gate_2x2_open_top,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_2x2_open_top
execute as @e[type=minecraft:marker,tag=ff_gate_2x2_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_2x2_close_top
execute as @e[type=minecraft:marker,tag=ff_gate_2x2_close_bottom,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_2x2_close_bottom
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_open_1,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_1
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_open_2,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_2
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_open_3,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_3
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_open_4,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_4
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_open_5,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_open_5
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_wait_close,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_5
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_close_4,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_4
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_close_3,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_3
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_close_2,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_2
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_close_1,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_1
execute as @e[type=minecraft:marker,tag=ff_gate_5x6_close_0,scores={ff_gate_timer=..0}] run function fossil_frights:hazard/security/gate_5x6_close_0
