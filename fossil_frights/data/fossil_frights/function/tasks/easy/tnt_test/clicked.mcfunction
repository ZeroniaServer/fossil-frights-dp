advancement revoke @s only fossil_frights:tnt_test_click
execute unless score $tnt_test_sel ff_task_state matches 1 run return 0
execute unless score $tnt_test_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/tnt_test/open_gate
execute positioned 45.5 64.5 80.5 run playsound minecraft:block.fence_gate.open master @a[team=ff_guard,distance=..24] ~ ~ ~ 1 1
function fossil_frights:tasks/easy/tnt_test/complete
