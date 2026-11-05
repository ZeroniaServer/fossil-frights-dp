execute unless score $reindeer_counting_sel ff_task_state matches 1 run return 0
execute unless score $reindeer_counting_done ff_task_state matches 0 run return 0
execute unless score $reindeer_counting_board_1 ff_task_state = $reindeer_counting_sky_1 ff_task_state run return 0
execute unless score $reindeer_counting_board_2 ff_task_state = $reindeer_counting_sky_2 ff_task_state run return 0
execute unless score $reindeer_counting_board_3 ff_task_state = $reindeer_counting_sky_3 ff_task_state run return 0
execute unless score $reindeer_counting_board_4 ff_task_state = $reindeer_counting_sky_4 ff_task_state run return 0
execute unless score $reindeer_counting_board_5 ff_task_state = $reindeer_counting_sky_5 ff_task_state run return 0
execute unless score $reindeer_counting_board_6 ff_task_state = $reindeer_counting_sky_6 ff_task_state run return 0
execute unless score $reindeer_counting_board_7 ff_task_state = $reindeer_counting_sky_7 ff_task_state run return 0
function fossil_frights:tasks/hard/reindeer_counting/complete
