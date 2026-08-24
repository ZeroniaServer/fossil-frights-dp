advancement revoke @s only fossil_frights:tasks/hard/return_the_key/pickup_click
execute if predicate fossil_frights:game_state/heist_mode_active if score $loot_lost_key ff_heist_loot_state matches 1 run function fossil_frights:game/heists/loot/high/pickup/lost_key
execute if predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless score $return_the_key_sel ff_task_state matches 1 run return 0
execute unless score $return_the_key_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute if predicate fossil_frights:player/inventory/vault_key run return 0
function fossil_frights:tasks/hard/return_the_key/give_key
