execute unless score $heist_round_active ff_game_state matches 1 run return 0
setblock -1 109 53 minecraft:redstone_wire[east=side,west=side,power=15] strict
setblock 5 109 53 minecraft:redstone_wire[east=side,west=side,power=15] strict
schedule function fossil_frights:game/heists/detonator/wire_4 1t replace
