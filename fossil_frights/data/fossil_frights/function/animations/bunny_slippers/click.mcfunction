advancement revoke @s only fossil_frights:misc/bunny_slippers_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run return 0
tag @s add ff_bunny_slippers_pickup_clicker
execute as @e[type=minecraft:interaction,tag=ff_bunny_slippers_pickup_click,distance=..10] at @s on target if entity @s[tag=ff_bunny_slippers_pickup_clicker] run function fossil_frights:animations/bunny_slippers/collect
tag @s remove ff_bunny_slippers_pickup_clicker
