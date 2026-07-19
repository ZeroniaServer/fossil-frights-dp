execute if score $heist_capture_disabled ff_game_state matches 1.. run return 0
execute unless score $heist_round_active ff_game_state matches 1 unless score $victory_complete ff_game_state matches 1 run return 0
particle minecraft:crimson_spore 0.5 80.00 12.5 0.6 0.25 0.6 0 2 force
execute positioned -2 79 10 as @e[type=minecraft:item,tag=!ff_heist_capture_fizzle,dx=4,dy=4,dz=4] at @s run function fossil_frights:game/heists/loot/capture/check
