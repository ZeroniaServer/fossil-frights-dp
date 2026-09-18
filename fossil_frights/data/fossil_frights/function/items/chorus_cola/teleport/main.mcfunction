# Determine load type (max horizontal distance)
scoreboard players set #max_horizontal_distance ff_dummy 32

# Load markers
execute at @s rotated as @s run tp 0-0-0-0 ~ ~ ~ ~ ~
execute as 0-0-0-0 at @s rotated as @s run function fossil_frights:player/position_cache/store
data modify storage fossil_frights:chorus_cola calc.player_pos set from storage fossil_frights:position_cache position
execute store result score #chunk_x_0 ff_dummy store result score #chunk_x_1 ff_dummy store result score #chunk_x_2 ff_dummy store result score #chunk_x_3 ff_dummy store result score #chunk_x_4 ff_dummy run data get storage fossil_frights:chorus_cola calc.player_pos[0]
execute store result score #chunk_z_0 ff_dummy store result score #chunk_z_1 ff_dummy store result score #chunk_z_2 ff_dummy store result score #chunk_z_3 ff_dummy store result score #chunk_z_4 ff_dummy run data get storage fossil_frights:chorus_cola calc.player_pos[2]
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
execute if score #max_horizontal_distance ff_dummy matches 17.. run function fossil_frights:items/chorus_cola/teleport/append_markers_5x5 with storage fossil_frights:chorus_cola calc
execute if score #max_horizontal_distance ff_dummy matches ..16 run function fossil_frights:items/chorus_cola/teleport/append_markers_3x3 with storage fossil_frights:chorus_cola calc
execute unless data storage fossil_frights:chorus_cola calc.passengers[0] run return run function fossil_frights:items/chorus_cola/teleport/fail
data modify storage fossil_frights:chorus_cola calc.passengers[].id set value "minecraft:marker"
function fossil_frights:items/chorus_cola/teleport/summon_batch with storage fossil_frights:chorus_cola calc
execute positioned 0 0 0 as @e[limit=1,distance=..0.01,type=minecraft:item_display,tag=ff_chorus_cola_teleport_location_batch] run function fossil_frights:items/chorus_cola/teleport/selected_batch
execute if score #max_horizontal_distance ff_dummy matches ..16 as @e[type=minecraft:marker,tag=ff_chorus_cola_teleport_location] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{horizontal:{min:16}}}} run kill @s
execute if score #max_horizontal_distance ff_dummy matches 17.. as @e[type=minecraft:marker,tag=ff_chorus_cola_teleport_location] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{horizontal:{min:32}}}} run kill @s

# Teleport player
execute unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:items/chorus_cola/teleport/choose_marker/frights
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_thief] run function fossil_frights:items/chorus_cola/teleport/choose_marker/heists_thief
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard] run function fossil_frights:items/chorus_cola/teleport/choose_marker/heists_guard

# Unload markers
tp @e[type=minecraft:marker,tag=ff_chorus_cola_teleport_location] 0 0 0
kill @e[type=minecraft:marker,tag=ff_chorus_cola_teleport_location]
