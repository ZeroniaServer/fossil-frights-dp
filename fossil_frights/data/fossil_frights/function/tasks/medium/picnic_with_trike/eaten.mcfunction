advancement revoke @s only fossil_frights:picnic_with_trike_eat
execute unless entity @s[team=ff_guard] run return 0
execute unless score $picnic_with_trike_sel ff_task_state matches 1 run return 0
execute unless score $picnic_with_trike_done ff_task_state matches 0 run return 0
execute positioned -24 81 45 if entity @s[dx=2,dy=1,dz=2] run function fossil_frights:tasks/medium/picnic_with_trike/complete
