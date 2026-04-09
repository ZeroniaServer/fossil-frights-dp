function fossil_frights:animations/game_start/stop
scoreboard players set $game_start_steps ff_game_state 20
function fossil_frights:animations/game_start/create_fake_player
schedule function fossil_frights:animations/game_start/move 3t
schedule function fossil_frights:animations/game_start/stop 65t
