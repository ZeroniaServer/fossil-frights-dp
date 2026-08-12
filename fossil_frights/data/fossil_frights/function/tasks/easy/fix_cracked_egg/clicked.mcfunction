advancement revoke @s only fossil_frights:tasks/easy/fix_cracked_egg/click
execute unless entity @s[team=ff_guard] run return 0
execute unless score $fix_cracked_egg_sel ff_task_state matches 1 run return 0
execute unless score $fix_cracked_egg_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/fix_cracked_egg/complete
