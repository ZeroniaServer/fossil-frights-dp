execute if entity @a[x=122,y=82,z=88,dx=2,dy=0,dz=2,limit=1] run function fossil_frights:lobby_games/temple_run/animations/triggered/darts2/fire_east
execute if entity @a[x=122,y=82,z=88,dx=2,dy=0,dz=2,limit=1] run scoreboard players set #darts2_phase ff_temple_run_anim 0
execute if entity @a[x=122,y=82,z=88,dx=2,dy=0,dz=2,limit=1] run return 0
scoreboard players set $darts2_active ff_temple_run_anim 0
scoreboard players set #darts2_phase ff_temple_run_anim 0
