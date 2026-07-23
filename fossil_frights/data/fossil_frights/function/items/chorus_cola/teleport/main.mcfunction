#execute store result score #choose ff_dummy run random value 0..99
#execute if score #choose ff_dummy matches 0..4 run scoreboard players set #teleport_distance_max ff_dummy 10
#execute if score #choose ff_dummy matches 5..29 run scoreboard players set #teleport_distance_max ff_dummy 15
#execute if score #choose ff_dummy matches 30..79 run scoreboard players set #teleport_distance_max ff_dummy 20
#execute if score #choose ff_dummy matches 80..89 run scoreboard players set #teleport_distance_max ff_dummy 25
#execute if score #choose ff_dummy matches 90..99 run scoreboard players set #teleport_distance_max ff_dummy 30
scoreboard players set #teleport_distance_max ff_dummy 32

scoreboard players operation #teleport_distance_min ff_dummy = #teleport_distance_max ff_dummy
scoreboard players remove #teleport_distance_min ff_dummy 5
execute if score #teleport_distance_min ff_dummy matches ..3 run scoreboard players set #teleport_distance_min ff_dummy 3

data modify storage fossil_frights:chorus_cola calc.player_pos set from entity @s Pos
execute store result score #chunk_x_0 ff_dummy store result score #chunk_x_1 ff_dummy store result score #chunk_x_2 ff_dummy store result score #chunk_x_3 ff_dummy store result score #chunk_x_4 ff_dummy run data get storage fossil_frights:chorus_cola calc.player_pos[0]
execute store result score #chunk_z_0 ff_dummy store result score #chunk_z_1 ff_dummy store result score #chunk_z_2 ff_dummy store result score #chunk_z_3 ff_dummy store result score #chunk_z_4 ff_dummy run data get storage fossil_frights:chorus_cola calc.player_pos[2]
scoreboard players remove #chunk_x_0 ff_dummy 32
scoreboard players remove #chunk_x_0 ff_dummy 32
scoreboard players remove #chunk_x_1 ff_dummy 16
scoreboard players add #chunk_x_2 ff_dummy 0
scoreboard players add #chunk_x_3 ff_dummy 16
scoreboard players add #chunk_x_4 ff_dummy 32
scoreboard players remove #chunk_z_0 ff_dummy 32
scoreboard players remove #chunk_z_1 ff_dummy 16
scoreboard players add #chunk_z_2 ff_dummy 0
scoreboard players add #chunk_z_3 ff_dummy 16
scoreboard players add #chunk_z_4 ff_dummy 32
execute store result storage fossil_frights:chorus_cola calc.chunk_x_0 int 1 run scoreboard players operation #chunk_x_0 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_x_0 int 1 run scoreboard players operation #chunk_x_0 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_x_1 int 1 run scoreboard players operation #chunk_x_1 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_x_2 int 1 run scoreboard players operation #chunk_x_2 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_x_3 int 1 run scoreboard players operation #chunk_x_3 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_x_4 int 1 run scoreboard players operation #chunk_x_4 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_z_0 int 1 run scoreboard players operation #chunk_z_0 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_z_1 int 1 run scoreboard players operation #chunk_z_1 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_z_2 int 1 run scoreboard players operation #chunk_z_2 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_z_3 int 1 run scoreboard players operation #chunk_z_3 ff_dummy /= #16 ff_constant
execute store result storage fossil_frights:chorus_cola calc.chunk_z_4 int 1 run scoreboard players operation #chunk_z_4 ff_dummy /= #16 ff_constant
data modify storage fossil_frights:chorus_cola calc.passengers set value []
execute if score #teleport_distance_max ff_dummy matches 17.. run function fossil_frights:items/chorus_cola/teleport/append_markers_5x5 with storage fossil_frights:chorus_cola calc
execute if score #teleport_distance_max ff_dummy matches ..16 run function fossil_frights:items/chorus_cola/teleport/append_markers_3x3 with storage fossil_frights:chorus_cola calc
execute unless data storage fossil_frights:chorus_cola calc.passengers[0] run return run function fossil_frights:items/chorus_cola/teleport/fail
data modify storage fossil_frights:chorus_cola calc.passengers[].id set value "minecraft:marker"
function fossil_frights:items/chorus_cola/teleport/summon_batch with storage fossil_frights:chorus_cola calc
execute positioned 0 0 0 as @e[limit=1,distance=..0.01,type=minecraft:item_display,tag=ff_chorus_cola_teleport_location_batch] run function fossil_frights:items/chorus_cola/teleport/selected_batch
execute store result storage fossil_frights:chorus_cola calc.min int 1 run scoreboard players get #teleport_distance_min ff_dummy
execute store result storage fossil_frights:chorus_cola calc.max int 1 run scoreboard players get #teleport_distance_max ff_dummy
function fossil_frights:items/chorus_cola/teleport/choose_marker_and_teleport_player with storage fossil_frights:chorus_cola calc
kill @e[type=minecraft:marker,tag=ff_chorus_cola_teleport_location]
