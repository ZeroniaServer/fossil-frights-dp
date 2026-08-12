advancement revoke @s only fossil_frights:tasks/hard/defrost_freezer/click
execute unless score $defrost_freezer_sel ff_task_state matches 1 run return 0
execute unless score $defrost_freezer_done ff_task_state matches 0 run return 0
setblock -13 73 41 minecraft:lever[face=wall,facing=west,powered=true]
playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
function fossil_frights:tasks/hard/defrost_freezer/complete
