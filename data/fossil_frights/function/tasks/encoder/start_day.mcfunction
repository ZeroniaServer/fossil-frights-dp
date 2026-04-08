# One file per day keeps the task mix easy to edit later.
function fossil_frights:tasks/reset
execute if score $day_current ff_day matches 1 run function fossil_frights:tasks/encoder/day_1
execute if score $day_current ff_day matches 2 run function fossil_frights:tasks/encoder/day_2
execute if score $day_current ff_day matches 3 run function fossil_frights:tasks/encoder/day_3
execute if score $day_current ff_day matches 4 run function fossil_frights:tasks/encoder/day_4
execute if score $day_current ff_day matches 5 run function fossil_frights:tasks/encoder/day_5
execute if score $day_current ff_day matches 6 run function fossil_frights:tasks/encoder/day_6
execute if score $day_current ff_day matches 7 run function fossil_frights:tasks/encoder/day_7
execute if score $day_current ff_day matches 8 run function fossil_frights:tasks/encoder/day_8
execute if score $day_current ff_day matches 9 run function fossil_frights:tasks/encoder/day_9
execute if score $day_current ff_day matches 10 run function fossil_frights:tasks/encoder/day_10
function fossil_frights:tasks/tracker/refresh
