schedule clear fossil_frights:game/heists/detonator/animate
schedule clear fossil_frights:game/heists/detonator/activate
schedule clear fossil_frights:game/heists/detonator/hold
schedule clear fossil_frights:game/heists/detonator/explode
execute as @e[type=minecraft:item_display,tag=ff_heist_detonator] run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/remove/this
kill @e[type=minecraft:tnt,tag=ff_heist_detonator_tnt]
setblock 8 109 53 minecraft:air strict
setblock -4 109 53 minecraft:air strict
setblock 2 109 52 minecraft:air strict
fill 7 109 53 -3 109 53 minecraft:air strict
schedule clear fossil_frights:game/heists/detonator/wire_0
schedule clear fossil_frights:game/heists/detonator/wire_1
schedule clear fossil_frights:game/heists/detonator/wire_2
schedule clear fossil_frights:game/heists/detonator/wire_3
schedule clear fossil_frights:game/heists/detonator/wire_4
schedule clear fossil_frights:game/heists/detonator/wire_5
