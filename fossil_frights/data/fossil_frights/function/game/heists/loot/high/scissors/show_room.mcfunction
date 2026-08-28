tag @a add ff_heist_scissors_actionbar_priority
schedule function fossil_frights:game/heists/loot/high/scissors/clear_actionbar_priority 20t replace
$title @a actionbar {translate:"ff.heists.scissors.found",color:"gray",italic:false,with:[{selector:"@a[tag=ff_heist_scissors_collector,limit=1]",color:"red",italic:false},{translate:"ff.museum_map.$(room)",color:"white",italic:false}]}
