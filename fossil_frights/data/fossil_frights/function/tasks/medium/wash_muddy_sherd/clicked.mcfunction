advancement revoke @s only fossil_frights:tasks/medium/wash_muddy_sherd/click
execute unless score $wash_muddy_sherd_sel ff_task_state matches 1 run return 0
execute unless score $wash_muddy_sherd_done ff_task_state matches 0 run return 0
execute unless entity @e[limit=1,type=minecraft:interaction,tag=ff_wash_muddy_sherd_click,distance=..6] run return 0

execute unless items entity @s weapon.* *[minecraft:custom_data~{itemID:"muddy_sherd"}] run return 0
function fossil_frights:tasks/medium/wash_muddy_sherd/use

function fossil_frights:tasks/medium/wash_muddy_sherd/complete
