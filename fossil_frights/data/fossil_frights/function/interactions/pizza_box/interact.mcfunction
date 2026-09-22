advancement revoke @s only fossil_frights:interactions/pizza_box/interact
tag @s add ff_pizza_box.player
execute unless predicate fossil_frights:game_state/game_running run return run tag @s remove ff_pizza_box.player
execute positioned as @s anchored eyes positioned ^ ^ ^ as @e[distance=..15,type=minecraft:interaction,tag=ff_pizza_interaction] at @s run function fossil_frights:interactions/pizza_box/interact/select
tag @s remove ff_pizza_box.player
