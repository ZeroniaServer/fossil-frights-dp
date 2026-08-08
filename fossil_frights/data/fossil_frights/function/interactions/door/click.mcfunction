advancement revoke @s only fossil_frights:door/click_door

tag @s add ff_door.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=interaction,tag=ff_door] at @s run function fossil_frights:interactions/door/click/select
tag @s remove ff_door.player
