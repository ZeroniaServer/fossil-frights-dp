advancement revoke @s only fossil_frights:interactions/button/interact

tag @s add ff_button.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..10,type=interaction,tag=ff_button] at @s run function fossil_frights:interactions/button/interact/select
tag @s remove ff_button.player
