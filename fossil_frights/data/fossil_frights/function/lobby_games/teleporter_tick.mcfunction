execute as @a[predicate=!fossil_frights:location/lobby_games/teleporters/any] run scoreboard players set @s ff_tp_time 0

execute if score #ff_ant_fight ff_tp_anim matches 1.. run function fossil_frights:lobby_games/teleporter_animation_tick {game:"ant_fight",action:5}
execute if score #ff_parkour ff_tp_anim matches 1.. run function fossil_frights:lobby_games/teleporter_animation_tick {game:"parkour",action:3}
execute if score #ff_sulfur_strikers ff_tp_anim matches 1.. run function fossil_frights:lobby_games/teleporter_animation_tick {game:"sulfur_strikers",action:10}
execute if score #ff_temple_run ff_tp_anim matches 1.. run function fossil_frights:lobby_games/teleporter_animation_tick {game:"temple_run",action:8}
