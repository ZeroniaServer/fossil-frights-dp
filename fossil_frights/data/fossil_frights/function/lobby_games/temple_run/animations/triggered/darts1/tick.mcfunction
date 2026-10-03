execute if score $darts1_active ff_temple_run_anim matches 1 unless entity @a[predicate=fossil_frights:player/temple_run_darts1_trigger,limit=1] run function fossil_frights:lobby_games/temple_run/animations/triggered/darts1/cleanup

execute if score $darts1_active ff_temple_run_anim matches 1 if score #darts1_phase ff_temple_run_anim matches 15 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts1/fire_2
execute if score $darts1_active ff_temple_run_anim matches 1 if score #darts1_phase ff_temple_run_anim matches 30 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts1/fire_3

execute if score $darts1_active ff_temple_run_anim matches 1 if score #darts1_phase ff_temple_run_anim matches 45 run function fossil_frights:lobby_games/temple_run/animations/triggered/darts1/fire_1
execute if score $darts1_active ff_temple_run_anim matches 1 if score #darts1_phase ff_temple_run_anim matches 45 run scoreboard players set #darts1_phase ff_temple_run_anim 0
execute if score $darts1_active ff_temple_run_anim matches 1 run scoreboard players add #darts1_phase ff_temple_run_anim 1

execute if score $darts1_active ff_temple_run_anim matches 0 if entity @a[predicate=fossil_frights:player/temple_run_darts1_trigger,limit=1] run function fossil_frights:lobby_games/temple_run/animations/triggered/darts1/fire_1
execute if score $darts1_active ff_temple_run_anim matches 0 if entity @a[predicate=fossil_frights:player/temple_run_darts1_trigger,limit=1] run scoreboard players set $darts1_active ff_temple_run_anim 1
execute if score $darts1_active ff_temple_run_anim matches 1 if score #darts1_phase ff_temple_run_anim matches 0 run scoreboard players set #darts1_phase ff_temple_run_anim 1
