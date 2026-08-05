# Start Frights if necessary, then enable Heists only in a valid waiting room.
execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_start_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
execute if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 unless entity @a[limit=1,tag=ff_in_queue] run function fossil_frights:join/guard/enter
execute if score $game_running ff_game_state matches 1 if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 0 unless predicate fossil_frights:player/is_playing run return run function fossil_frights:join/heists/random
execute if score $game_running ff_game_state matches 1 if score $party_mode_active ff_game_state matches 1 unless predicate fossil_frights:player/is_playing run return run function fossil_frights:join/party/enter
execute if predicate fossil_frights:player/is_playing unless score $heist_mode_active ff_game_state matches 1 unless score $party_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/activate
execute unless predicate fossil_frights:player/is_playing if score $game_running ff_game_state matches 1 run function fossil_frights:join/queue/enter
