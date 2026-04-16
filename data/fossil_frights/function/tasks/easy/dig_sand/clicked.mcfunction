advancement revoke @s only fossil_frights:dig_sand_click
execute unless entity @s[tag=ff_active] run return 0
execute unless score $dig_sand_sel ff_task_state matches 1 run return 0
execute unless score $dig_sand_done ff_task_state matches 0 run return 0
function fossil_frights:tasks/easy/dig_sand/complete
