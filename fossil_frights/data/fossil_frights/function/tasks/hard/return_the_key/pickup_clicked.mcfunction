advancement revoke @s only fossil_frights:tasks/hard/return_the_key/pickup_click
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $return_the_key_sel ff_task_state matches 1 run return 0
execute unless score $return_the_key_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute if predicate fossil_frights:player/inventory/vault_key run return 0
function fossil_frights:tasks/hard/return_the_key/give_key
