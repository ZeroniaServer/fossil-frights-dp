execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute if score $heist_loot ff_heist matches 1000.. run return 0
particle minecraft:crimson_spore 0.5 80.00 12.5 1.2 0.35 1.2 0 2 force
execute positioned -2 79 10 as @e[type=minecraft:item,dx=4,dy=26,dz=4] at @s run function fossil_frights:game/heists/loot/capture/check
