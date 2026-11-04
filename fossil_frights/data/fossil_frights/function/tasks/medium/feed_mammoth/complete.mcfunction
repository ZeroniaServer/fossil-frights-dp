execute unless score $feed_mammoth_sel ff_task_state matches 1 run return 0
execute unless score $feed_mammoth_done ff_task_state matches 0 run return 0
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"fish_food"}] unless items entity @s weapon.offhand *[minecraft:custom_data~{itemID:"fish_food"}] run return 0
data modify storage fossil_frights:tasks complete.task_name set value "feed_mammoth"
execute as @e[type=#fossil_frights:display_entities,tag=ff_feed_mammoth] run data modify entity @s view_range set value 1
execute positioned 21 95 31 run playsound minecraft:entity.camel_husk.ambient master @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 1.2 0.9
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @s *[minecraft:custom_data~{itemID:"fish_food"}] 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"feed_mammoth"}}] 1
scoreboard players set $feed_mammoth_done ff_task_state 1
function fossil_frights:tasks/medium/feed_mammoth/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
