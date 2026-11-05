function fossil_frights:tasks/hard/infestation/cleanup
scoreboard players set $infestation_answer ff_task_state 1
scoreboard players set $infestation_total ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/infestation/click
