function fossil_frights:animations/cubekoin/crane/clear_schedules
scoreboard players set $crane_wait ff_game_state 200
tag @a remove ff_crane_rider
schedule function fossil_frights:animations/cubekoin/crane/wait_tick 1t
