execute unless data storage fossil_frights:naughty_or_nice slots run function fossil_frights:tasks/final/naughty_or_nice/delivery/configure
execute if score #naughty_or_nice_done_1 ff_task_state matches 0 run function fossil_frights:tasks/final/naughty_or_nice/delivery/check_slot {slot:1}
execute if score #naughty_or_nice_done_2 ff_task_state matches 0 run function fossil_frights:tasks/final/naughty_or_nice/delivery/check_slot {slot:2}
execute if score #naughty_or_nice_done_3 ff_task_state matches 0 run function fossil_frights:tasks/final/naughty_or_nice/delivery/check_slot {slot:3}
execute if score #naughty_or_nice_done_4 ff_task_state matches 0 run function fossil_frights:tasks/final/naughty_or_nice/delivery/check_slot {slot:4}
