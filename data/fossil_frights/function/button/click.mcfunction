advancement revoke @s only fossil_frights:button/click_button

tag @s add ff_button.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..10,type=interaction,tag=ff_button] at @s if function fossil_frights:button/click/check run function fossil_frights:button/click/run_function with entity @s data.ff_button
tag @s remove ff_button.player
