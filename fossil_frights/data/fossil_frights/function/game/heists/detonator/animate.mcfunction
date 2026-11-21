execute unless score $heist_round_active ff_game_state matches 1 run return 0
execute as @e[type=minecraft:item_display,tag=ff_heist_detonator] at @s run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/animations/activate/play_exclusive
schedule function fossil_frights:game/heists/detonator/hold 9t replace
