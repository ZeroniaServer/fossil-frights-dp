advancement revoke @s only fossil_frights:fix_sculker_click
execute unless score $fix_sculker_sel ff_task_state matches 1 run return 0
execute unless score $fix_sculker_done ff_task_state matches 0 run return 0
execute unless items entity @s weapon.mainhand minecraft:iron_ingot unless items entity @s weapon.offhand minecraft:iron_ingot run return 0
function fossil_frights:tasks/medium/fix_sculker/complete
clear @s minecraft:iron_ingot 1
