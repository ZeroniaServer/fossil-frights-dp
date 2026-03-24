function fossil_frights:animations/crane/clear_schedules
scoreboard players set $crane_wait ff_game_state 200
tag @a remove ff_crane_rider
schedule function fossil_frights:animations/crane/wait_tick 1t
