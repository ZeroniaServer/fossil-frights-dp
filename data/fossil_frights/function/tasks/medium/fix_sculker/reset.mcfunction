function fossil_frights:tasks/medium/fix_sculker/cleanup
advancement revoke @a only fossil_frights:fix_sculker_click
scoreboard players set $fix_sculker_sel ff_task_state 0
scoreboard players set $fix_sculker_done ff_task_state 0
setblock 36 68 61 minecraft:sculk_catalyst[bloom=true]
