execute if score $crane_wait ff_game_state matches 1.. run particle minecraft:end_rod 51 69.5 59 0 0.1 0 0.01 1
execute if score $crane_wait ff_game_state matches 1.. if entity @a[x=51,y=69,z=59,dx=0,dy=0,dz=0,gamemode=!spectator,limit=1] run function fossil_frights:animations/cubekoin/crane/start_ride
execute if score $crane_wait ff_game_state matches 1.. run scoreboard players remove $crane_wait ff_game_state 1
execute if score $crane_wait ff_game_state matches 1.. unless entity @a[tag=ff_crane_rider,limit=1] run schedule function fossil_frights:animations/cubekoin/crane/wait_tick 1t
