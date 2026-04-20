advancement revoke @s only fossil_frights:return_the_key_pickup_click
execute unless score $return_the_key_sel ff_task_state matches 1 run return 0
execute unless score $return_the_key_done ff_task_state matches 0 run return 0
execute unless entity @s[tag=ff_active] run return 0
execute if data entity @s {Inventory:[{id:"minecraft:ominous_trial_key"}]} run return 0
function fossil_frights:tasks/hard/return_the_key/give_key
