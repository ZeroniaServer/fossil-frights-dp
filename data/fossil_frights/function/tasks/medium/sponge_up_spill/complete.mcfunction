execute unless score $sponge_up_spill_sel ff_task_state matches 1 run return 0
execute unless score $sponge_up_spill_done ff_task_state matches 0 run return 0
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Sponge Up Spill"
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run function fossil_frights:tasks/medium/sponge_up_spill/dry_1
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run schedule function fossil_frights:tasks/medium/sponge_up_spill/dry_2 5t
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run schedule function fossil_frights:tasks/medium/sponge_up_spill/dry_3 10t
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run schedule function fossil_frights:tasks/medium/sponge_up_spill/dry_4 15t
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 positioned -15.5 79.5 69.5 run playsound minecraft:block.sponge.absorb block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.9 1.15
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 positioned -15.5 79.5 69.5 run playsound minecraft:item.bucket.fill block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.35 1.7
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $sponge_up_spill_sel ff_task_state matches 1 if score $sponge_up_spill_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"sponge_up_spill"}] 1
execute if score $sponge_up_spill_sel ff_task_state matches 1 run scoreboard players set $sponge_up_spill_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/sponge_up_spill/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
