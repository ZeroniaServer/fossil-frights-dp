$scoreboard players set #naughty_or_nice_done_$(slot) ff_task_state 1
$kill @e[type=minecraft:interaction,tag=ff_naughty_or_nice_slot_$(slot)]
function fossil_frights:tasks/final/naughty_or_nice/recipients/update_lists
execute if score #naughty_or_nice_done_1 ff_task_state matches 1 if score #naughty_or_nice_done_2 ff_task_state matches 1 if score #naughty_or_nice_done_3 ff_task_state matches 1 if score #naughty_or_nice_done_4 ff_task_state matches 1 run function fossil_frights:tasks/final/naughty_or_nice/complete
