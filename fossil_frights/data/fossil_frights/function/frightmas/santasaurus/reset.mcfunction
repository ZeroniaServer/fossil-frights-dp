schedule clear fossil_frights:frightmas/santasaurus/return_to_ambient
function aj:my_blueprint/remove/all
execute positioned 0.75 81 30 rotated 0 0 run function aj:my_blueprint/summon {args:{}}
execute if score $game_running ff_game_state matches 1 positioned 0.75 81 30 as @e[type=minecraft:item_display,tag=aj.my_blueprint.root,tag=!aj.my_blueprint.animation.ambient.playing,distance=..0.1,limit=1] at @s run function aj:my_blueprint/animations/ambient/play
