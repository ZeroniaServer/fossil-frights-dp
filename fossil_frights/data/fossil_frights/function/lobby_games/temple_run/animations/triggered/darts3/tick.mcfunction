execute if score $darts3_active ff_temple_run_anim matches 1 unless entity @a[predicate=fossil_frights:player/temple_run_darts3_trigger,limit=1] run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/cleanup

execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 5 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_2
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 10 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_3
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 15 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_4
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 20 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_5
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 25 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_6
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 30 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_7
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 35 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_8
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 40 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_9
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 45 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_10
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 50 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_11
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 55 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_12

execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 60 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_1
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 60 run scoreboard players set #darts3_phase ff_temple_run_anim 0
execute if score $darts3_active ff_temple_run_anim matches 1 run scoreboard players add #darts3_phase ff_temple_run_anim 1

execute if score $darts3_active ff_temple_run_anim matches 0 if entity @a[predicate=fossil_frights:player/temple_run_darts3_trigger,limit=1] run function fossil_frights:lobby_games/temple_run/animations/triggered/darts3/fire_1
execute if score $darts3_active ff_temple_run_anim matches 0 if entity @a[predicate=fossil_frights:player/temple_run_darts3_trigger,limit=1] run scoreboard players set $darts3_active ff_temple_run_anim 1
execute if score $darts3_active ff_temple_run_anim matches 1 if score #darts3_phase ff_temple_run_anim matches 0 run scoreboard players set #darts3_phase ff_temple_run_anim 1
