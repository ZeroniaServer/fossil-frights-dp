execute unless score $feed_parrot_sel ff_task_state matches 1 run return 0
execute unless score $feed_parrot_done ff_task_state matches 0 run return 0
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "feed_parrot"
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run function fossil_frights:tasks/medium/feed_parrot/cleanup
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run summon minecraft:parrot 24 99 84 {Tags:["ff_feed_parrot"],NoAI:true,NoGravity:true,Invulnerable:true,Variant:2}
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 positioned 24 99 84 run playsound minecraft:entity.parrot.ambient block @a[team=ff_guard,distance=..24] ~ ~ ~ 0.8 1.1
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run schedule function fossil_frights:tasks/medium/feed_parrot/fly_1 4t
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $feed_parrot_sel ff_task_state matches 1 if score $feed_parrot_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_parrot"}] 1
execute if score $feed_parrot_sel ff_task_state matches 1 run scoreboard players set $feed_parrot_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
