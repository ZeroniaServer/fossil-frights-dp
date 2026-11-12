$scoreboard players set #naughty_or_nice_done_$(slot) ff_task_state 1
$execute store result storage fossil_frights:run_breakdown delivery.recipient int 1 run scoreboard players get #naughty_or_nice_slot_$(slot) ff_task_state
$data modify storage fossil_frights:run_breakdown delivery.kind set value "$(kind)"
function fossil_frights:tasks/final/naughty_or_nice/delivery/append_run_breakdown with storage fossil_frights:run_breakdown delivery
$execute as @e[type=minecraft:interaction,tag=ff_naughty_or_nice_slot_$(slot)] at @s run particle minecraft:poof ~ ~1 ~ 0.2 0.2 0.2 0.03 15 force
$execute as @e[type=minecraft:interaction,tag=ff_naughty_or_nice_slot_$(slot)] at @s run tag @e[type=minecraft:item_display,tag=ff_naughty_or_nice_stocking,distance=..0.05] remove ff_naughty_or_nice_stocking
$kill @e[type=minecraft:interaction,tag=ff_naughty_or_nice_slot_$(slot)]
function fossil_frights:tasks/final/naughty_or_nice/recipients/update_lists
execute if score #naughty_or_nice_done_1 ff_task_state matches 1 if score #naughty_or_nice_done_2 ff_task_state matches 1 if score #naughty_or_nice_done_3 ff_task_state matches 1 if score #naughty_or_nice_done_4 ff_task_state matches 1 run function fossil_frights:tasks/final/naughty_or_nice/complete
