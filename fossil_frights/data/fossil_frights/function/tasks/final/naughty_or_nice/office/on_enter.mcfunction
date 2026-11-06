tag @s add ff_naughty_or_nice_in_office
execute if score $naughty_or_nice_started ff_task_state matches 0 run return run function fossil_frights:tasks/final/naughty_or_nice/office/enter
execute unless score $naughty_or_nice_toss_pending ff_task_state matches 0 run return 0
execute if score #naughty_or_nice_done_1 ff_task_state matches 1 if score #naughty_or_nice_done_2 ff_task_state matches 1 if score #naughty_or_nice_done_3 ff_task_state matches 1 run return 0
execute if entity @a[predicate=fossil_frights:player/inventory/naughty_or_nice_present,limit=1] run return 0
execute if entity @e[type=minecraft:item,predicate=fossil_frights:entity/contents/naughty_or_nice_present,limit=1] run return 0
scoreboard players set $naughty_or_nice_started ff_task_state 0
function fossil_frights:tasks/final/naughty_or_nice/office/enter
