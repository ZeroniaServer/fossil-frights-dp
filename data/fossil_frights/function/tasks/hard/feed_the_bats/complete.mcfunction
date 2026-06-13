execute unless score $feed_the_bats_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_bats_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "Feed the Bats"
execute positioned 25.5 106.5 87.5 run playsound minecraft:entity.bat.ambient block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.9 1.0
execute positioned 25.5 106.5 87.5 run playsound minecraft:entity.generic.eat block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.7 1.4
execute positioned 25.5 106.5 87.5 run particle minecraft:poof ~ ~0.15 ~ 0.35 0.2 0.35 0.04 18 force
execute as @a[tag=ff_active] run function fossil_frights:tasks/hard/feed_the_bats/clear_timer
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"feed_the_bats"}] 1
scoreboard players set $feed_the_bats_done ff_task_state 1
kill @e[type=minecraft:item,x=22,y=104,z=84,dx=6,dy=4,dz=6,nbt={Item:{components:{"minecraft:custom_data":{itemID:"lady_bug"}}}}]
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
