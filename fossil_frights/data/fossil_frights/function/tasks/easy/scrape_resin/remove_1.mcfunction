particle minecraft:block{block_state:"minecraft:resin_clump"} -15.5 96.5 55.5 0.2 0.2 0.2 0.03 12 force
setblock -16 96 55 minecraft:air
schedule function fossil_frights:tasks/easy/scrape_resin/remove_2 5t replace
