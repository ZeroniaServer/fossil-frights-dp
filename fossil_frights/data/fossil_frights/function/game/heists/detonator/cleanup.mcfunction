schedule clear fossil_frights:game/heists/detonator/animate
schedule clear fossil_frights:game/heists/detonator/activate
schedule clear fossil_frights:game/heists/detonator/hold
schedule clear fossil_frights:game/heists/detonator/explode
execute as @e[type=minecraft:item_display,tag=ff_heist_detonator] run function fossil_frights:animations/tasks/easy/tnt_test/detonator/rig/remove/this
kill @e[type=minecraft:tnt,tag=ff_heist_detonator_tnt]
setblock 8 109 53 minecraft:air strict
setblock 7 109 55 minecraft:air strict
setblock 8 109 55 minecraft:air strict
setblock 8 109 54 minecraft:air strict
setblock 6 109 55 minecraft:air strict
setblock -4 109 53 minecraft:air strict
fill -4 109 55 -4 109 54 minecraft:air strict
