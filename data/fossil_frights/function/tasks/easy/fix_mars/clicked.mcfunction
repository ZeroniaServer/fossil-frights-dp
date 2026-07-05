advancement revoke @s only fossil_frights:fix_mars_click
execute unless entity @s[team=ff_guard] run return 0
execute unless score $fix_mars_sel ff_task_state matches 1 run return 0
execute unless score $fix_mars_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/fix_mars/complete
