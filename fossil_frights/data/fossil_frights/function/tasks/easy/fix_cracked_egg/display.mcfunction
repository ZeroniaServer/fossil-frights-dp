function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
data modify entity @e[type=minecraft:block_display,tag=ff_sniffer_egg,limit=1,sort=nearest] block_state.Properties.hatch set value "0"
