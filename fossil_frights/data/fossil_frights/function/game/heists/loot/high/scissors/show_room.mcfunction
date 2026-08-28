tag @a add ff_heist_scissors_actionbar_priority
schedule function fossil_frights:game/heists/loot/high/scissors/clear_actionbar_priority 20t replace
$title @a actionbar [{selector:"@a[tag=ff_heist_scissors_collector,limit=1]",color:"red",italic:false},{text:" found scissors ",color:"gray",italic:false},{translate:"ff.museum_map.$(room)",color:"white",italic:false}]
