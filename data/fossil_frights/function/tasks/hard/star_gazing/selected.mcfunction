execute if score $star_gazing_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $star_gazing_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/star_gazing/selected_book
scoreboard players set $star_gazing_sel ff_task_state 1
scoreboard players set $star_gazing_done ff_task_state 0
execute store result score $star_gazing_answer ff_task_state run random value 1..6
function fossil_frights:tasks/hard/star_gazing/cleanup
execute if score $star_gazing_answer ff_task_state matches 1 run function fossil_frights:tasks/hard/star_gazing/place/spider
execute if score $star_gazing_answer ff_task_state matches 2 run function fossil_frights:tasks/hard/star_gazing/place/dragon
execute if score $star_gazing_answer ff_task_state matches 3 run function fossil_frights:tasks/hard/star_gazing/place/bee
execute if score $star_gazing_answer ff_task_state matches 4 run function fossil_frights:tasks/hard/star_gazing/place/golem
execute if score $star_gazing_answer ff_task_state matches 5 run function fossil_frights:tasks/hard/star_gazing/place/guardian
execute if score $star_gazing_answer ff_task_state matches 6 run function fossil_frights:tasks/hard/star_gazing/place/wither
function fossil_frights:tasks/tracker/refresh
