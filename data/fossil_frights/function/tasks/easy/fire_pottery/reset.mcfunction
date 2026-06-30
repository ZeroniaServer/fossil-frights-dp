setblock 66 79 54 minecraft:campfire[lit=false] strict
setblock 66 79 56 minecraft:campfire[lit=false] strict
setblock 66 79 58 minecraft:campfire[lit=false] strict

schedule clear fossil_frights:tasks/easy/fire_pottery/baking/bake_pot_1
schedule clear fossil_frights:tasks/easy/fire_pottery/baking/bake_pot_2
schedule clear fossil_frights:tasks/easy/fire_pottery/baking/bake_pot_3

setblock 66 81 54 minecraft:barrier strict
setblock 66 81 56 minecraft:barrier strict
setblock 66 81 58 minecraft:barrier strict

kill @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot]
execute positioned 66 81 54 rotated 90 0 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_fire_pottery_task_pot","ff_fire_pottery_task_pot.pot_1"],width:1,height:1.5},loot_table:"fossil_frights:display/fire_pottery_task/pot_1"}
execute positioned 66 81 56 rotated 90 0 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_fire_pottery_task_pot","ff_fire_pottery_task_pot.pot_2"],width:1,height:1.5},loot_table:"fossil_frights:display/fire_pottery_task/pot_2"}
execute positioned 66 81 58 rotated 90 0 run function fossil_frights:items/util/summon_item_display {nbt:{Tags:["ff_fire_pottery_task_pot","ff_fire_pottery_task_pot.pot_3"],width:1,height:1.5},loot_table:"fossil_frights:display/fire_pottery_task/pot_3"}

execute unless score $fire_pottery_sel ff_task_state matches 0 run item modify entity @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot] contents fossil_frights:fire_pottery_task/set_clay
execute unless score $fire_pottery_sel ff_task_state matches 1 run item modify entity @e[type=minecraft:item_display,tag=ff_fire_pottery_task_pot] contents fossil_frights:fire_pottery_task/set_baked
