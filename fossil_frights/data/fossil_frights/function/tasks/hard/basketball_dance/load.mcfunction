setblock -26 81 34 minecraft:chorus_plant[down=true,up=true] strict

kill @e[type=#fossil_frights:display_entities,tag=ff_coppy_the_copper_golem]
execute positioned -26 81 34 rotated -90 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/copper_golem",nbt:{Tags:["ff_coppy_the_copper_golem"],width:1,height:1}}
