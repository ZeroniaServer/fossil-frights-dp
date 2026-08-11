advancement revoke @s only fossil_frights:interactions/fence_gate/interact

tag @s add ff_fence_gate.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=minecraft:interaction,tag=ff_fence_gate] at @s run function fossil_frights:interactions/fence_gate/interact/select
tag @s remove ff_fence_gate.player
