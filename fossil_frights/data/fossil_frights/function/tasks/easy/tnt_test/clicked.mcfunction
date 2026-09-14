advancement revoke @s only fossil_frights:tasks/easy/tnt_test/click
execute unless score $tnt_test_sel ff_task_state matches 1 run return 0
execute unless score $tnt_test_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/tnt_test/complete
