advancement revoke @s only fossil_frights:museum_map_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $run_multiplayer ff_game_state matches 0 if score $museum_map_claims ff_game_state matches 1.. run return 0
execute if score $run_multiplayer ff_game_state matches 1 if score $museum_map_claims ff_game_state matches 2.. run return 0
data remove storage fossil_frights:museum_map stack
data modify storage fossil_frights:museum_map stack set from entity @e[type=minecraft:item_display,tag=museum_map,limit=1,sort=nearest] item
execute if data storage fossil_frights:museum_map stack run function fossil_frights:command/museum_map/give_from_storage with storage fossil_frights:museum_map
