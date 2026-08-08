advancement revoke @s only fossil_frights:button/click_button

tag @s add ff_button.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..10,type=interaction,tag=ff_button] at @s run function fossil_frights:interactions/button/click/select
tag @s remove ff_button.player
