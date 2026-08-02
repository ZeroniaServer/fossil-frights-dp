# Restore the lights in smaller waves using glowstone and full-bright light blocks.
execute if score #lights_stop_phase ff_hazard_rng matches 0 run schedule clear fossil_frights:hazard/lights/start
execute if score #lights_stop_phase ff_hazard_rng matches 0 run function fossil_frights:hazard/lights/close_breaker_panel
execute if score #lights_stop_phase ff_hazard_rng matches 0 run scoreboard players set #lights_stop_phase ff_hazard_rng 1
scoreboard players operation #lights_phase_now ff_hazard_rng = #lights_stop_phase ff_hazard_rng

# Wave 1
execute if score #lights_phase_now ff_hazard_rng matches 1 run fill -28 72 8 22 78 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 1 run fill 23 72 8 73 78 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 1 run fill -28 72 8 22 78 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 1 run fill 23 72 8 73 78 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 1 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.9 1.0
execute if score #lights_phase_now ff_hazard_rng matches 1 run scoreboard players set #lights_stop_phase ff_hazard_rng 2
execute if score #lights_phase_now ff_hazard_rng matches 1 run schedule function fossil_frights:hazard/lights/stop 8t

# Wave 2
execute if score #lights_phase_now ff_hazard_rng matches 2 run fill -28 79 8 22 85 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 2 run fill 23 79 8 73 85 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 2 run fill -28 79 8 22 85 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 2 run fill 23 79 8 73 85 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 2 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.75 0.85
execute if score #lights_phase_now ff_hazard_rng matches 2 run scoreboard players set #lights_stop_phase ff_hazard_rng 3
execute if score #lights_phase_now ff_hazard_rng matches 2 run schedule function fossil_frights:hazard/lights/stop 8t

# Wave 3
execute if score #lights_phase_now ff_hazard_rng matches 3 run fill -28 86 8 22 92 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 3 run fill 23 86 8 73 92 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 3 run fill -28 86 8 22 92 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 3 run fill 23 86 8 73 92 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 3 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.72 0.9
execute if score #lights_phase_now ff_hazard_rng matches 3 run scoreboard players set #lights_stop_phase ff_hazard_rng 4
execute if score #lights_phase_now ff_hazard_rng matches 3 run schedule function fossil_frights:hazard/lights/stop 8t

# Wave 4
execute if score #lights_phase_now ff_hazard_rng matches 4 run fill -28 93 8 22 99 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 4 run fill 23 93 8 73 99 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 4 run fill -28 93 8 22 99 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 4 run fill 23 93 8 73 99 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 4 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.72 0.95
execute if score #lights_phase_now ff_hazard_rng matches 4 run scoreboard players set #lights_stop_phase ff_hazard_rng 5
execute if score #lights_phase_now ff_hazard_rng matches 4 run schedule function fossil_frights:hazard/lights/stop 8t

# Wave 5
execute if score #lights_phase_now ff_hazard_rng matches 5 run fill -28 100 8 22 106 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 5 run fill 23 100 8 73 106 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 5 run data modify entity @e[limit=1,type=item_display,tag=ff_human_face_cut_out_board] brightness set value {block:11,sky:11}
execute if score #lights_phase_now ff_hazard_rng matches 5 run fill -28 100 8 22 106 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 5 run fill 23 100 8 73 106 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 5 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.7 1.0
execute if score #lights_phase_now ff_hazard_rng matches 5 run scoreboard players set #lights_stop_phase ff_hazard_rng 6
execute if score #lights_phase_now ff_hazard_rng matches 5 run schedule function fossil_frights:hazard/lights/stop 8t

# Wave 6
execute if score #lights_phase_now ff_hazard_rng matches 6 run fill -28 107 8 22 113 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 6 run fill 23 107 8 73 113 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 6 run fill -28 107 8 22 113 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 6 run fill 23 107 8 73 113 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 6 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.7 1.05
execute if score #lights_phase_now ff_hazard_rng matches 6 run scoreboard players set #lights_stop_phase ff_hazard_rng 7
execute if score #lights_phase_now ff_hazard_rng matches 6 run schedule function fossil_frights:hazard/lights/stop 8t

# Wave 7
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill -28 114 8 22 117 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill 23 114 8 73 117 97 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill -28 114 8 22 117 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill 23 114 8 73 117 97 minecraft:light[level=15] replace minecraft:light[level=0]
execute if score #lights_phase_now ff_hazard_rng matches 7 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.8 1.1
execute if score #lights_phase_now ff_hazard_rng matches 7 run scoreboard players set #lights_stop_phase ff_hazard_rng 0

# Security Room
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill -31 76 35 -35 74 39 minecraft:glowstone replace minecraft:redstone_lamp
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill -31 75 31 -33 75 31 minecraft:end_rod[facing=south] replace minecraft:waxed_lightning_rod
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill -31 75 30 -33 75 30 minecraft:end_rod[facing=north] replace minecraft:waxed_lightning_rod

# Glowberry Trees
execute if score #lights_phase_now ff_hazard_rng matches 7 run setblock 13 84 40 cave_vines[berries=true] strict
execute if score #lights_phase_now ff_hazard_rng matches 7 run setblock -11 82 40 cave_vines[berries=true] strict
execute if score #lights_phase_now ff_hazard_rng matches 7 run setblock -13 84 40 cave_vines[berries=true] strict

# Cafe Campfire
execute if score #lights_phase_now ff_hazard_rng matches 7 run fill 28 81 30 28 81 26 minecraft:campfire[lit=true]
