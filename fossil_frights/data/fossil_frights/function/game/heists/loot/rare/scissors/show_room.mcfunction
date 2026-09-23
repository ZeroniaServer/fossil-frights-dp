scoreboard players set @a ff_actionbar_manager.slot.scissors_found 65
$scoreboard players display numberformat @a ff_actionbar_manager.slot.scissors_found fixed {translate:"ff.heists.scissors.found",color:"gray",with:[{selector:"@a[tag=ff_heist_scissors_collector,limit=1]",color:"red"},{translate:"ff.museum_map.$(room)",color:"white"}]}
schedule function fossil_frights:player/actionbar/manager 1t append
