function fossil_frights:animations/dinocoin/crane/sculkadillo_triggered
scoreboard players set $crane_wait ff_game_state 200
schedule function fossil_frights:animations/dinocoin/crane/wait_tick 1t
