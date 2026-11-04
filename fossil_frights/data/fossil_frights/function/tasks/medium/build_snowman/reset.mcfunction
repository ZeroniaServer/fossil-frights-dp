function fossil_frights:tasks/medium/build_snowman/cleanup
advancement revoke @a only fossil_frights:tasks/medium/build_snowman/click
scoreboard players set $build_snowman_sel ff_task_state 0
scoreboard players set $build_snowman_done ff_task_state 0
setblock 45 82 33 minecraft:carved_pumpkin[facing=south] strict
