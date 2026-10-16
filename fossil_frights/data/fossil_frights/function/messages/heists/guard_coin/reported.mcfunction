$tellraw @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] {translate:"ff.heists.guard_coin.reported",color:"gray",italic:false,with:[{translate:"%s %s",italic:false,with:[{atlas:"blocks",sprite:"fossil_frights:items/misc/dinocoin",color:"white"},{translate:"ff.dinocoin",color:"gold",italic:false}]},{translate:"ff.heists.guard_coin.location.$(location)",color:"white",italic:false}]}
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] at @s run playsound minecraft:block.amethyst_cluster.step master @s ~ ~ ~ 2.0 1.2

scoreboard players set @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] ff_actionbar_manager.slot.guard_coin_found 65
$scoreboard players display numberformat @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] ff_actionbar_manager.slot.guard_coin_found fixed {translate:"ff.heists.guard_coin.reported",color:"gray",with:[{translate:"%s %s",with:[{atlas:"blocks",sprite:"fossil_frights:items/misc/dinocoin",color:"white"},{translate:"ff.dinocoin",color:"gold"}]},{translate:"ff.heists.guard_coin.location.$(location)",color:"white"}]}
schedule function fossil_frights:player/actionbar/manager 1t append
