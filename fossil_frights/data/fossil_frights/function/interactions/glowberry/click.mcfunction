advancement revoke @s only fossil_frights:interactions/glowberry/click_glowberry
tag @s add ff_glowberry.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=minecraft:interaction,tag=ff_glowberry] at @s run function fossil_frights:interactions/glowberry/click/select
tag @s remove ff_glowberry.player
