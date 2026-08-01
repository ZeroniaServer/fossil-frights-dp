execute store result score #roam_blocks_left ff_dummy run random value 0..8
scoreboard players set #blocked_direction ff_dummy -1
execute if score #roam_blocks_left ff_dummy matches 1.. positioned as @s align xyz positioned ~0.5 ~ ~0.5 run function fossil_frights:items/chorus_cola/teleport/roam/loop
execute positioned as @s align xyz run tp @s ~0.5 ~ ~0.5
execute positioned as @s run function fossil_frights:items/chorus_cola/teleport/roam/reposition
execute positioned as @s align xyz positioned ~ ~-1 ~ if predicate fossil_frights:block/center_collision_extends_halfway_into_above_block if entity @s[dy=0.5] run tp @s ~0.5 ~1.5 ~0.5
execute positioned as @s run tp @a[limit=1,tag=ff_chorus_cola.teleport.roam.player] ~ ~ ~
