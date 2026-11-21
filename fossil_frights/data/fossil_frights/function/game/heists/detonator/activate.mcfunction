execute unless score $heist_round_active ff_game_state matches 1 run return 0
setblock 8 109 53 minecraft:air strict
setblock 7 109 55 minecraft:redstone_wire[east=side,west=side,power=15] strict
setblock 8 109 55 minecraft:redstone_wire[west=side,north=side,power=15] strict
setblock 8 109 54 minecraft:redstone_wire[north=side,south=side,power=15] strict
summon minecraft:tnt 8.5 109 53.5 {fuse:20,explosion_power:0,NoGravity:true,Tags:["ff_heist_detonator_tnt"]}
playsound minecraft:entity.tnt.primed master @a 8.5 109 53.5 1 1
setblock -4 109 53 minecraft:air strict
fill -4 109 55 -4 109 54 minecraft:redstone_wire[north=side,south=side,power=15] strict
summon minecraft:tnt -3.5 109 53.5 {fuse:20,explosion_power:0,NoGravity:true,Tags:["ff_heist_detonator_tnt"]}
playsound minecraft:entity.tnt.primed master @a -3.5 109 53.5 1 1
