# Manual shutdown button for the curse room.
execute if score #curse_manual_cooldown ff_hazard_rng matches 1.. run scoreboard players remove #curse_manual_cooldown ff_hazard_rng 1
execute if score curse ff_hazard_active matches 0 run return 0
execute if score #curse_forcefield_sound ff_hazard_rng matches 1.. run scoreboard players remove #curse_forcefield_sound ff_hazard_rng 1
execute if score #curse_forcefield_sound ff_hazard_rng matches ..0 positioned -20 71 32 run playsound minecraft:block.note_block.chime master @a[distance=..12] ~ ~ ~ 0.35 1.35
execute if score #curse_forcefield_sound ff_hazard_rng matches ..0 run scoreboard players set #curse_forcefield_sound ff_hazard_rng 80

# Trigger levitation once when a player enters the curse room.
tag @a[team=ff_guard] remove ff_curse_room_now
tag @a[team=ff_guard,x=-23,y=70,z=29,dx=4,dy=6,dz=4] add ff_curse_room_now
execute as @a[team=ff_guard,tag=ff_curse_room_now] unless entity @s[tag=ff_curse_room_seen] run effect give @s minecraft:levitation 5 0 true
tag @a[team=ff_guard,tag=ff_curse_room_now] add ff_curse_room_seen
tag @a[team=ff_guard,tag=ff_curse_room_seen,tag=!ff_curse_room_now] remove ff_curse_room_seen

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
