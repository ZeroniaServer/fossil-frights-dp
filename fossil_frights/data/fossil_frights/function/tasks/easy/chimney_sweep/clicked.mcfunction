advancement revoke @s only fossil_frights:tasks/easy/chimney_sweep/click
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless score $chimney_sweep_sel ff_task_state matches 1 run return 0
execute unless score $chimney_sweep_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/chimney_sweep/complete
