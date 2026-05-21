function fossil_frights:animations/crane/clear_schedules
scoreboard players set $crane_wait ff_game_state 0
tag @a remove ff_crane_rider
tag @a[x=51,y=69,z=59,dx=0,dy=0,dz=0,gamemode=!spectator,sort=nearest,limit=1] add ff_crane_rider
function fossil_frights:animations/crane/start_motion
