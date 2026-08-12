advancement revoke @s only fossil_frights:tasks/easy/swat_flies/click
execute unless entity @s[team=ff_guard] run return 0
execute unless score $swat_flies_sel ff_task_state matches 1 run return 0
execute unless score $swat_flies_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/swat_flies/complete
