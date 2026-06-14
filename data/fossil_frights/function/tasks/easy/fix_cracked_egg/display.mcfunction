function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
setblock 18 95 58 minecraft:air
item replace entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,limit=1,sort=nearest] contents with minecraft:egg[minecraft:custom_data={itemID:"sniffer_egg"}] 1
