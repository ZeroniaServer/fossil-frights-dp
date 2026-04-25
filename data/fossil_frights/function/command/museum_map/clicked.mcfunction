advancement revoke @s only fossil_frights:museum_map_click
execute unless score $game_running ff_game_state matches 1 run return 0
data modify storage fossil_frights:museum_map stack set from entity @e[type=minecraft:item_frame,x=2,y=80,z=17,dx=1,dy=1,dz=1,limit=1,sort=nearest] Item
execute if data storage fossil_frights:museum_map stack run function fossil_frights:command/museum_map/give_from_storage with storage fossil_frights:museum_map
