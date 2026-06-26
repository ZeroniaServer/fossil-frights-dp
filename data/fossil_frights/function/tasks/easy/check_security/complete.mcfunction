execute if score $heist_mode_active ff_game_state matches 1 run return 0
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "check_security"
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"check_security"}] 1
execute if score $check_security_sel ff_task_state matches 1 run scoreboard players set $check_security_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
execute if entity @s[type=minecraft:player,tag=ff_active] run function fossil_frights:tasks/easy/check_security/forced_spectate_start
execute unless entity @s[type=minecraft:player,tag=ff_active] as @a[tag=ff_active,sort=nearest,limit=1] at @s run function fossil_frights:tasks/easy/check_security/forced_spectate_start
execute unless entity @a[tag=ff_active,limit=1] as @p run function fossil_frights:tasks/easy/check_security/forced_spectate_start
