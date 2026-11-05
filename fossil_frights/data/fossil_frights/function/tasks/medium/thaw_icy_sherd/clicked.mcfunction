advancement revoke @s only fossil_frights:tasks/medium/thaw_icy_sherd/click
execute unless score $thaw_icy_sherd_sel ff_task_state matches 1 run return 0
execute unless score $thaw_icy_sherd_done ff_task_state matches 0 run return 0

execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"icy_sherd"}] run return 0
function fossil_frights:tasks/medium/thaw_icy_sherd/use

execute if entity @e[limit=1,type=minecraft:interaction,tag=ff_thaw_icy_sherd_click,distance=..6] run function fossil_frights:tasks/medium/thaw_icy_sherd/complete
