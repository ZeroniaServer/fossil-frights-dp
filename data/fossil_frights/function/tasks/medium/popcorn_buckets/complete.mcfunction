execute unless score $popcorn_buckets_sel ff_task_state matches 1 run return 0
execute unless score $popcorn_buckets_done ff_task_state matches 0 run return 0
execute unless entity @s[tag=ff_active] run return 0
execute unless items entity @s weapon.mainhand minecraft:phantom_membrane[custom_data~{itemID:"empty_popcorn"}] unless data entity @s {Inventory:[{Slot:-106b,id:"minecraft:phantom_membrane",components:{"minecraft:custom_data":{itemID:"empty_popcorn"}}}]} run return 0
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Popcorn Buckets"
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 run function fossil_frights:tasks/medium/popcorn_buckets/cleanup
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 positioned 26.5 76 82.5 run playsound minecraft:block.dispenser.dispense master @a[tag=ff_active,distance=..18] ~ ~ ~ 0.9 1.2
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 positioned 26.5 76 82.5 run playsound minecraft:block.note_block.basedrum master @a[tag=ff_active,distance=..18] ~ ~ ~ 0.65 1.8
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 positioned 26.5 76.4 82.5 run particle minecraft:block{block_state:{Name:"minecraft:mushroom_stem"}} ~ ~ ~ 0.45 0.35 0.45 0.08 36 force
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 positioned 26.5 76.4 82.5 run particle minecraft:poof ~ ~ ~ 0.35 0.25 0.35 0.04 18 force
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 run clear @s minecraft:phantom_membrane[minecraft:custom_data~{itemID:"empty_popcorn"}] 1
execute if score $popcorn_buckets_sel ff_task_state matches 1 if score $popcorn_buckets_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"popcorn_buckets"}] 1
execute if score $popcorn_buckets_sel ff_task_state matches 1 run scoreboard players set $popcorn_buckets_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
