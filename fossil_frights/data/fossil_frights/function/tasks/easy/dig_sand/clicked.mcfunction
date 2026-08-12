advancement revoke @s only fossil_frights:tasks/easy/dig_sand/click
execute unless entity @s[team=ff_guard] run return 0
execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/dig_sand/complete
