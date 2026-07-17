advancement revoke @s only fossil_frights:sweep_popcorn_click
execute unless entity @s[team=ff_guard] run return 0
execute unless score $sweep_popcorn_sel ff_task_state matches 1 run return 0
execute unless score $sweep_popcorn_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/sweep_popcorn/complete
