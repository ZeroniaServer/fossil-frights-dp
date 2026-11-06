function fossil_frights:tasks/hard/ice_sculpture/cleanup
clear @a *[minecraft:custom_data~{itemID:"ice_sculpture_salt"}]
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/ice_sculpture_salt]
setblock 68 83 46 minecraft:chorus_plant
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 68.5 82.0 46.5 0 0
scoreboard players set $ice_sculpture_moved ff_task_state 0
