function fossil_frights:tasks/medium/free_caveman/cleanup
advancement revoke @a only fossil_frights:tasks/medium/free_caveman/click
scoreboard players set $free_caveman_sel ff_task_state 0
scoreboard players set $free_caveman_done ff_task_state 0
function fossil_frights:tasks/medium/free_caveman/apply_ice
