advancement revoke @s only fossil_frights:interactions/decorated_pots/interact

tag @s add ff_decorated_pot.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=minecraft:interaction,tag=ff_decorated_pot] at @s run function fossil_frights:interactions/decorated_pots/interact/select
tag @s remove ff_decorated_pot.player
