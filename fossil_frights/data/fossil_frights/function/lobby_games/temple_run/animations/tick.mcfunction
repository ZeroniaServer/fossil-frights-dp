execute store success score $temple_run_animation_present ff_temple_run_anim if entity @a[predicate=fossil_frights:player/is_playing_temple_run,limit=1]
execute if score $temple_run_animation_present ff_temple_run_anim matches 1 run function fossil_frights:lobby_games/temple_run/animations/loop/tick
execute if score $temple_run_animation_present ff_temple_run_anim matches 0 if score $temple_run_animation_active ff_temple_run_anim matches 1 run function fossil_frights:lobby_games/temple_run/animations/reset
execute if score $temple_run_animation_present ff_temple_run_anim matches 0 run scoreboard players set $temple_run_animation_active ff_temple_run_anim 0
