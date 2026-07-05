execute unless score $feed_the_fish_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_fish_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute unless items entity @s weapon.mainhand minecraft:rotten_flesh unless items entity @s weapon.offhand minecraft:rotten_flesh run return 0
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "feed_the_fish"
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run function fossil_frights:tasks/medium/feed_the_fish/cleanup
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 positioned 11 81 66 run playsound minecraft:block.dispenser.dispense master @a[team=ff_guard,distance=..18] ~ ~ ~ 0.9 1.5
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 positioned 11 81 66 run playsound minecraft:entity.cod.flop neutral @a[team=ff_guard,distance=..18] ~ ~ ~ 0.7 1.25
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 positioned 11.5 81.4 66.5 run particle minecraft:block{block_state:{Name:"minecraft:dead_brain_coral_block"}} ~ ~ ~ 0.35 0.25 0.35 0.07 34 force
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 positioned 11.5 81.2 66.5 run particle minecraft:bubble ~ ~ ~ 0.35 0.25 0.35 0.03 18 force
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run clear @s minecraft:rotten_flesh 1
execute if score $feed_the_fish_sel ff_task_state matches 1 if score $feed_the_fish_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_the_fish"}] 1
execute if score $feed_the_fish_sel ff_task_state matches 1 run scoreboard players set $feed_the_fish_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
