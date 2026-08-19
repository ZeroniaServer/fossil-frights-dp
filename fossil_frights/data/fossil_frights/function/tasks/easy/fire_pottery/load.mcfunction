kill @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot]
execute positioned 66 81 54 rotated 90 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/fire_pottery_task/pot_1",nbt:{Tags:["ff_fire_pottery_task_pot","ff_fire_pottery_task_pot.pot_1"],width:1,height:1.5}}
execute positioned 66 81 56 rotated 90 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/fire_pottery_task/pot_2",nbt:{Tags:["ff_fire_pottery_task_pot","ff_fire_pottery_task_pot.pot_2"],width:1,height:1.5}}
execute positioned 66 81 58 rotated 90 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/fire_pottery_task/pot_3",nbt:{Tags:["ff_fire_pottery_task_pot","ff_fire_pottery_task_pot.pot_3"],width:1,height:1.5}}

setblock 66 81 54 minecraft:barrier strict
setblock 66 81 56 minecraft:barrier strict
setblock 66 81 58 minecraft:barrier strict

scoreboard players reset $fire_pottery_baking ff_task_state
scoreboard players reset $fire_pottery_reset_after_baking ff_task_state
