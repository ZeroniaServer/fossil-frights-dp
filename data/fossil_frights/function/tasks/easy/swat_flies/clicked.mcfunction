advancement revoke @s only fossil_frights:swat_flies_click
execute unless entity @s[tag=ff_active] run return 0
execute unless score $swat_flies_sel ff_task_state matches 1 run return 0
execute unless score $swat_flies_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/swat_flies/complete
