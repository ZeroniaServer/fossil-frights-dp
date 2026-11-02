execute unless score $scrape_resin_sel ff_task_state matches 1 run return 0
execute unless score $scrape_resin_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "scrape_resin"
execute positioned -16 95 56 run playsound minecraft:block.resin.break master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
particle minecraft:landing_honey -16.5 95 56.5 0.2 0.7 0.2 0 20
function fossil_frights:tasks/easy/scrape_resin/cleanup
function fossil_frights:tasks/easy/scrape_resin/set_display_visible
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"scrape_resin"}}] 1
scoreboard players set $scrape_resin_done ff_task_state 1
schedule function fossil_frights:tasks/easy/scrape_resin/remove_1 5t replace
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
