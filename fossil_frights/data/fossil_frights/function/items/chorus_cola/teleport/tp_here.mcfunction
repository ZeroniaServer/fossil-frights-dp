execute unless predicate fossil_frights:block/chorus_cola/has_internal_center_support positioned ~ ~-1 ~ unless predicate fossil_frights:block/chorus_cola/has_top_center_support positioned ~ ~1 ~ run return run tp @s ~ ~ ~

tag @s add ff_chorus_cola.teleport.roam.player
execute summon marker run function fossil_frights:items/chorus_cola/teleport/roam/main
tag @s remove ff_chorus_cola.teleport.roam.player
