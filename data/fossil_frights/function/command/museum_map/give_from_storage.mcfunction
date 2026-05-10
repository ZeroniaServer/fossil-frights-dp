$summon minecraft:item ~ ~0.25 ~ {PickupDelay:0,Motion:[0.0d,0.12d,0.0d],Item:$(stack)}
scoreboard players add $museum_map_claims ff_game_state 1
execute if score $run_multiplayer ff_game_state matches 0 if score $museum_map_claims ff_game_state matches 1.. run function fossil_frights:command/museum_map/disable
execute if score $run_multiplayer ff_game_state matches 1 if score $museum_map_claims ff_game_state matches 2.. run function fossil_frights:command/museum_map/disable
