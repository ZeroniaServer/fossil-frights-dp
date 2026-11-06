execute unless score $snowball_fight_sel ff_task_state matches 1 run return 0
execute unless score $snowball_fight_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "snowball_fight"
function fossil_frights:tasks/hard/snowball_fight/cleanup
clear @a minecraft:snowball
kill @e[type=minecraft:item,predicate=fossil_frights:entity/contents/snowball_fight_snowball]
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"snowball_fight"}}] 1
scoreboard players set $snowball_fight_done ff_task_state 1
scoreboard players reset @a ff_actionbar_manager.slot.snowball_fight
scoreboard players reset @a ff_snowball_fight_count
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
