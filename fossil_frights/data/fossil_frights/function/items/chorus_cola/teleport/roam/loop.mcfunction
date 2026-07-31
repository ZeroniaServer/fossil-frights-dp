execute store success score #ceiling ff_dummy unless block ~ ~2 ~ #fossil_frights:never_has_solid_collision
execute store success score #can_go_down ff_dummy if predicate fossil_frights:block/chorus_cola/can_roam_into_from_jump

scoreboard players operation #previous_direction ff_dummy = #direction ff_dummy
execute store result score #direction ff_dummy run random value 0..4
execute if score #direction ff_dummy matches 0 unless score #direction ff_dummy = #previous_direction ff_dummy positioned ~1 ~ ~ run function fossil_frights:items/chorus_cola/teleport/roam/move
execute if score #direction ff_dummy matches 1 unless score #direction ff_dummy = #previous_direction ff_dummy positioned ~-1 ~ ~ run function fossil_frights:items/chorus_cola/teleport/roam/move
execute if score #direction ff_dummy matches 2 unless score #direction ff_dummy = #previous_direction ff_dummy positioned ~ ~ ~1 run function fossil_frights:items/chorus_cola/teleport/roam/move
execute if score #direction ff_dummy matches 3 unless score #direction ff_dummy = #previous_direction ff_dummy positioned ~ ~ ~-1 run function fossil_frights:items/chorus_cola/teleport/roam/move

scoreboard players remove #roam_blocks_left ff_dummy 1
execute if score #roam_blocks_left ff_dummy matches 1.. positioned as @s run function fossil_frights:items/chorus_cola/teleport/roam/loop
