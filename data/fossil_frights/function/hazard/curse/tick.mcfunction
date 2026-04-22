# Indicator blink while curse is active.
execute if score curse ff_hazard_active matches 1 run scoreboard players remove #curse_indicator_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_indicator_timer ff_hazard_rng matches ..0 run scoreboard players set #curse_indicator_timer ff_hazard_rng 8
execute if score curse ff_hazard_active matches 1 if score #curse_indicator_timer ff_hazard_rng matches 8 run scoreboard players add #curse_indicator ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_indicator ff_hazard_rng matches 2.. run scoreboard players set #curse_indicator ff_hazard_rng 0
execute if score curse ff_hazard_active matches 1 if score #curse_indicator_timer ff_hazard_rng matches 8 if score #curse_indicator ff_hazard_rng matches 0 run function fossil_frights:hazard/curse/set_indicator_alert_0
execute if score curse ff_hazard_active matches 1 if score #curse_indicator_timer ff_hazard_rng matches 8 if score #curse_indicator ff_hazard_rng matches 1 run function fossil_frights:hazard/curse/set_indicator_alert_1

# Manual shutdown button for the curse room.
execute if score curse ff_hazard_active matches 1 if block -20 71 31 minecraft:crimson_button[powered=true] run function fossil_frights:hazard/stop/curse
execute if score curse ff_hazard_active matches 0 run return 0

# Trigger levitation once when a player enters the curse room.
tag @a remove ff_curse_room_now
tag @a[x=-23,y=70,z=29,dx=4,dy=6,dz=4] add ff_curse_room_now
execute as @a[tag=ff_curse_room_now] unless entity @s[tag=ff_curse_room_seen] run effect give @s minecraft:levitation 5 0 true
tag @a[tag=ff_curse_room_now] add ff_curse_room_seen
tag @a[tag=ff_curse_room_seen,tag=!ff_curse_room_now] remove ff_curse_room_seen

# State 0 waits 4 seconds between flicker bursts.
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 0 run scoreboard players remove #curse_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 0 if score #curse_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/cycle

# Roll a player curse effect every 5 seconds.
execute if score curse ff_hazard_active matches 1 run scoreboard players remove #curse_effect_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_effect_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/effect_roll

# State 1 keeps the selected bands dark for 0.25-0.5 seconds.
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 1 run scoreboard players remove #curse_restore_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 1 if score #curse_restore_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/advance_off

# State 2 is a tiny gap before another flicker on the same bands.
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 2 run scoreboard players remove #curse_second_timer ff_hazard_rng 1
execute if score curse ff_hazard_active matches 1 if score #curse_state ff_hazard_rng matches 2 if score #curse_second_timer ff_hazard_rng matches ..0 run function fossil_frights:hazard/curse/resume_flicker
