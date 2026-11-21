execute unless score $heist_round_active ff_game_state matches 1 run return 0
setblock -3 109 53 minecraft:redstone_wire[east=side,west=side,power=15] strict
setblock 7 109 53 minecraft:redstone_wire[east=side,west=side,power=15] strict
