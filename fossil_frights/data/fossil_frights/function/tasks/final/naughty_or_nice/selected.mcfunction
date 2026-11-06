execute unless score $day_current ff_day matches 10 unless score $naughty_or_nice_admin ff_task_state matches 1 run return 0
execute if score $naughty_or_nice_sel ff_task_state matches 1 run return 0
scoreboard players add $task_selected_total ff_task_state 1
loot insert 18 71 29 loot fossil_frights:items/task_books/final/naughty_or_nice
scoreboard players set $naughty_or_nice_sel ff_task_state 1
scoreboard players set $naughty_or_nice_done ff_task_state 0
scoreboard players set $naughty_or_nice_started ff_task_state 0
execute as @e[type=minecraft:item_display,tag=aj.my_blueprint.root,limit=1] run tp @s -0.8 69 11.4 0 0
function fossil_frights:tasks/final/naughty_or_nice/cleanup
function fossil_frights:tasks/final/naughty_or_nice/recipients/hide_stockings
function fossil_frights:tasks/final/naughty_or_nice/recipients/roll
function fossil_frights:tasks/final/naughty_or_nice/recipients/spawn_interactions
function fossil_frights:tasks/final/naughty_or_nice/recipients/update_lists
function fossil_frights:tasks/final/naughty_or_nice/door/open
function fossil_frights:tasks/tracker/refresh
