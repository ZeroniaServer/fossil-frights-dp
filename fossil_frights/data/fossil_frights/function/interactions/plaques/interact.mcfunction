advancement revoke @s only fossil_frights:interactions/plaques/interact
tag @s add ff_plaque.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=minecraft:interaction,tag=ff_plaque] at @s run function fossil_frights:interactions/plaques/interact/select
tag @s remove ff_plaque.player
