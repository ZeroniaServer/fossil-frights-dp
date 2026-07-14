execute if score $crane_wait ff_game_state matches 1.. run particle minecraft:end_rod 51 69.5 59 0 0.1 0 0.01 1
execute if score $crane_wait ff_game_state matches 1.. at @e[limit=1,type=minecraft:item_display,tag=ff_deep_dark_elevator] positioned ~-0.5 ~1 ~-0.5 if entity @a[limit=1,dx=0,predicate=fossil_frights:entity/on_ground] run return run function fossil_frights:animations/dinocoin/crane/start_ride
execute if score $crane_wait ff_game_state matches 1.. run scoreboard players remove $crane_wait ff_game_state 1
execute if score $crane_wait ff_game_state matches 1.. run schedule function fossil_frights:animations/dinocoin/crane/wait_tick 1t
execute if score $crane_wait ff_game_state matches 0 run function fossil_frights:animations/dinocoin/crane/sculkadillo_default
