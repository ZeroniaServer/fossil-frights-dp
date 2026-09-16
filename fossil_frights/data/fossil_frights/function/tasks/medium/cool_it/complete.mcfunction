execute unless score $cool_it_sel ff_task_state matches 1 run return 0
execute unless score $cool_it_done ff_task_state matches 0 run return 0
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "cool_it"
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 positioned 23.5 103.5 9.5 run playsound fossil-frights:task.cool_it master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run setblock 23 103 9 minecraft:ice
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run schedule function fossil_frights:tasks/medium/cool_it/freeze_second 10t
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run summon minecraft:firework_rocket 23.5 104 9.5 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:0,explosions:[{shape:"small_ball",colors:[3847130],fade_colors:[11534335],has_trail:false,has_twinkle:true}]}}}}
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 positioned 23.5 103.5 9.5 run particle minecraft:dust{color:[0.55,0.85,1.0],scale:1.1} ~ ~ ~ 0.35 0.2 0.35 0.02 28 force
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 positioned 23.5 103.5 9.5 run particle minecraft:snowflake ~ ~ ~ 0.45 0.25 0.45 0.02 40 force
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 positioned 23.5 103.5 9.5 run playsound minecraft:block.glass.break block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.45 1.7
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 positioned 23.5 103.5 9.5 run playsound minecraft:block.fire.extinguish block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.65 1.45
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $cool_it_sel ff_task_state matches 1 if score $cool_it_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"cool_it"}] 1
execute if score $cool_it_sel ff_task_state matches 1 run scoreboard players set $cool_it_done ff_task_state 1
function fossil_frights:items/util/return_all_but_one_to_thrower
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
