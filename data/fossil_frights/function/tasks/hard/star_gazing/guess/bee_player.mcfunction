execute unless score $star_gazing_sel ff_task_state matches 1 run return 0
execute unless score $star_gazing_done ff_task_state matches 0 run return 0
execute unless score $star_gazing_answer ff_task_state matches 3 run function fossil_frights:tasks/hard/star_gazing/fail
execute if score $star_gazing_answer ff_task_state matches 3 run function fossil_frights:tasks/hard/star_gazing/complete
