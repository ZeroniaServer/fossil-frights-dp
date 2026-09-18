execute unless score $feed_the_fish_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_fish_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"fish_food"}] run return 0
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "feed_the_fish"
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run function fossil_frights:tasks/medium/feed_the_fish/cleanup
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 positioned 11 81 66 run playsound minecraft:block.bubble_column.whirlpool_inside master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.5 0
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run schedule function fossil_frights:tasks/medium/feed_the_fish/particle/spawn_all 1t
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run clear @s *[minecraft:custom_data~{itemID:"fish_food"}] 1
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_the_fish"}] 1
execute if score $feed_the_fish_sel ff_task_state matches 1 run scoreboard players set $feed_the_fish_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
