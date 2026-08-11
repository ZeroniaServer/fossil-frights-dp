advancement revoke @s only fossil_frights:interactions/glowberry_vine/interact
tag @s add ff_glowberry_vine.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=minecraft:interaction,tag=ff_glowberry_vine] at @s run function fossil_frights:interactions/glowberry_vine/interact/select
tag @s remove ff_glowberry_vine.player
