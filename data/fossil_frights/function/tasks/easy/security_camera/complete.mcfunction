execute if score $security_camera_sel ff_task_state matches 1 if score $security_camera_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Security Camera"
execute if score $security_camera_sel ff_task_state matches 1 if score $security_camera_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $security_camera_sel ff_task_state matches 1 if score $security_camera_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $security_camera_sel ff_task_state matches 1 if score $security_camera_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"security_camera"}] 1
execute if score $security_camera_sel ff_task_state matches 1 run scoreboard players set $security_camera_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
execute as @a[tag=ff_active,sort=nearest,limit=1] at @s run function fossil_frights:tasks/easy/security_camera/forced_spectate_start
execute unless entity @a[tag=ff_active,limit=1] as @p run function fossil_frights:tasks/easy/security_camera/forced_spectate_start
