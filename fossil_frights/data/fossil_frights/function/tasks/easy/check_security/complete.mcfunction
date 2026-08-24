execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "check_security"
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $check_security_sel ff_task_state matches 1 if score $check_security_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"check_security"}] 1
execute if score $check_security_sel ff_task_state matches 1 run scoreboard players set $check_security_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
execute if entity @s[type=minecraft:player,team=ff_guard] run function fossil_frights:cameras/forced_spectate_start
execute unless entity @s[type=minecraft:player,team=ff_guard] as @a[team=ff_guard,sort=nearest,limit=1] at @s run function fossil_frights:cameras/forced_spectate_start
execute unless entity @a[team=ff_guard,limit=1] as @p run function fossil_frights:cameras/forced_spectate_start
