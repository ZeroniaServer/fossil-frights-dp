execute unless score $hoveraptor_sel ff_task_state matches 1 run return 0
execute unless score $hoveraptor_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "hoveraptor"
function fossil_frights:tasks/hard/hoveraptor/set_frame_hoverboard
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/hard/hoveraptor/cleanup
execute positioned 21.5 104.5 42.5 run particle minecraft:dust{color:[0.2f,0.55f,1f],scale:1.2f} ~ ~0.35 ~ 0.28 0.28 0.28 0.01 24 force
execute positioned 21.5 104.5 42.5 run particle minecraft:enchant ~ ~0.35 ~ 0.25 0.35 0.25 0.6 18 force
execute positioned 21.5 104.5 42.5 run playsound minecraft:block.beacon.power_select master @a[team=ff_guard,distance=..24] ~ ~ ~ 0.8 1.5
execute positioned 21.5 104.5 42.5 run playsound minecraft:entity.breeze.idle_air master @a[team=ff_guard,distance=..24] ~ ~ ~ 0.8 1.25
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"hoveraptor"}] 1
scoreboard players set $hoveraptor_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
