execute if score #naughty_or_nice_done_1 ff_task_state matches 0 positioned 0.75 72.0 12.5 run function fossil_frights:tasks/final/naughty_or_nice/office/spawn_present {slot:1,nbt:{PickupDelay:20,Age:0,Motion:[0.0d,0.15d,0.18d]}}
execute if score #naughty_or_nice_done_2 ff_task_state matches 0 positioned 0.75 72.0 12.5 run function fossil_frights:tasks/final/naughty_or_nice/office/spawn_present {slot:2,nbt:{PickupDelay:20,Age:0,Motion:[-0.04d,0.17d,0.16d]}}
execute if score #naughty_or_nice_done_3 ff_task_state matches 0 positioned 0.75 72.0 12.5 run function fossil_frights:tasks/final/naughty_or_nice/office/spawn_present {slot:3,nbt:{PickupDelay:20,Age:0,Motion:[0.04d,0.17d,0.16d]}}
scoreboard players set $naughty_or_nice_toss_pending ff_task_state 0
