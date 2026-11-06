execute unless score $ice_sculpture_sel ff_task_state matches 1 run return 0
execute unless score $ice_sculpture_done ff_task_state matches 0 run return 0
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 10.5 70.0 59.5 90 0
function fossil_frights:tasks/hard/ice_sculpture/cleanup
setblock 10 70 59 minecraft:chorus_plant[down=true,east=false,north=false,south=false,up=true,west=false] strict
setblock 10 71 59 minecraft:chorus_plant[down=true,east=false,north=false,south=false,up=false,west=false] strict
clear @a *[minecraft:custom_data~{itemID:"ice_sculpture_salt"}]
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/ice_sculpture_salt]
particle minecraft:poof 10.5 70.7 59.5 0.5 0.5 0.5 0.04 24 force
particle minecraft:snowflake 10.5 70.7 59.5 0.55 0.55 0.55 0.03 40 force
data modify storage fossil_frights:tasks complete.task_name set value "ice_sculpture"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"ice_sculpture"}}] 1
scoreboard players set $ice_sculpture_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
