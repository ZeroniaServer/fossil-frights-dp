execute if score $darts2_active ff_temple_run_anim matches 1 if score #darts2_phase ff_temple_run_anim matches 10 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts2/fire_east
execute if score $darts2_active ff_temple_run_anim matches 1 if score #darts2_phase ff_temple_run_anim matches 30 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts2/fire_west
execute if score $darts2_active ff_temple_run_anim matches 1 if score #darts2_phase ff_temple_run_anim matches 40 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts2/cleanup
execute if score $darts2_active ff_temple_run_anim matches 1 run scoreboard players add #darts2_phase ff_temple_run_anim 1

execute if score $darts2_active ff_temple_run_anim matches 0 if entity @a[x=122,y=82,z=88,dx=2,dy=0,dz=2,limit=1] run scoreboard players set $darts2_active ff_temple_run_anim 1
