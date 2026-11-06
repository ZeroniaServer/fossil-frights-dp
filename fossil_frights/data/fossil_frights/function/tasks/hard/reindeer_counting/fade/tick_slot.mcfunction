$scoreboard players remove #reindeer_counting_fade_$(id) ff_task_state 1
$execute if score #reindeer_counting_fade_$(id) ff_task_state matches 6..23 run function fossil_frights:tasks/hard/reindeer_counting/fade/opacity_step {id:$(id)}
$execute if score #reindeer_counting_fade_$(id) ff_task_state matches 18 run function fossil_frights:tasks/hard/reindeer_counting/fade/swap {id:$(id)}
$execute if score #reindeer_counting_fade_$(id) ff_task_state matches 0 run scoreboard players remove #reindeer_counting_fades ff_task_state 1
$execute if score #reindeer_counting_fade_$(id) ff_task_state matches 0 if score #reindeer_counting_fades ff_task_state matches 0 run function fossil_frights:tasks/hard/reindeer_counting/check_complete
