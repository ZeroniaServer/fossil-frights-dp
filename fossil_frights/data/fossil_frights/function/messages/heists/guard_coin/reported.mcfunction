$tellraw @a[team=ff_guard,gamemode=!spectator] {translate:"ff.heists.guard_coin.reported",color:"gray",italic:false,with:[{translate:"%s %s",italic:false,with:[{atlas:"blocks",sprite:"fossil-frights:items/misc/dinocoin",color:"white"},{translate:"ff.dinocoin",color:"gold",italic:false}]},{translate:"ff.heists.guard_coin.location.$(location)",color:"white",italic:false}]}
execute as @a[team=ff_guard,gamemode=!spectator] at @s run playsound minecraft:block.amethyst_cluster.step master @s ~ ~ ~ 2.0 1.2
tag @a[team=ff_guard,gamemode=!spectator] add ff_heist_guard_coin_actionbar_priority
schedule function fossil_frights:game/heists/guard_coin/clear_actionbar_priority 40t replace
title @a[team=ff_guard,gamemode=!spectator] times 0 40 0
$title @a[team=ff_guard,gamemode=!spectator] actionbar {translate:"ff.heists.guard_coin.reported",color:"gray",italic:false,with:[{translate:"%s %s",italic:false,with:[{atlas:"blocks",sprite:"fossil-frights:items/misc/dinocoin",color:"white"},{translate:"ff.dinocoin",color:"gold",italic:false}]},{translate:"ff.heists.guard_coin.location.$(location)",color:"white",italic:false}]}
