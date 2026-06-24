setblock -26 81 34 minecraft:waxed_weathered_copper_golem_statue[copper_golem_pose=standing,facing=east] strict

kill @e[type=#fossil_frights:display_entities,tag=ff_coppy_the_copper_golem]
execute positioned -26 81 34 rotated -90 0 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_coppy_the_copper_golem"],width:1,height:1},loot_table:"fossil_frights:display/copper_golem"}
