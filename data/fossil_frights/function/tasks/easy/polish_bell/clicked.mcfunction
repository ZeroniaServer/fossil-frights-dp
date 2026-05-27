advancement revoke @s only fossil_frights:polish_bell_click
execute unless entity @s[tag=ff_active] run return 0
execute unless score $polish_bell_sel ff_task_state matches 1 run return 0
execute unless score $polish_bell_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/polish_bell/complete
