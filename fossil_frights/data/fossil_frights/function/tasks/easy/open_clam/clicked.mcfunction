advancement revoke @s only fossil_frights:tasks/easy/open_clam/click
execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
execute unless score $open_clam_sel ff_task_state matches 1 run return 0
execute unless score $open_clam_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/open_clam/complete
