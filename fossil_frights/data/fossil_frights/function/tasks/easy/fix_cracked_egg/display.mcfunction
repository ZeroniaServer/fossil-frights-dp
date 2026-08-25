function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
setblock 18 95 58 minecraft:air
loot replace entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,limit=1,sort=nearest] contents loot fossil_frights:display/sniffer_egg
