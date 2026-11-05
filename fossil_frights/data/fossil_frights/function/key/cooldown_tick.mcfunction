scoreboard players remove @s ff_key_cooldown 1
scoreboard players reset @s[scores={ff_key_cooldown=..0}] ff_key_cooldown
function fossil_frights:key/show_cooldown_bar
execute unless score $evolution_sel ff_task_state matches 1 run scoreboard players reset @s ff_actionbar_manager.slot.evolution_task_info
execute if score $evolution_sel ff_task_state matches 1 unless score $evolution_done ff_task_state matches 0 run scoreboard players reset @s ff_actionbar_manager.slot.evolution_task_info
execute if score @s ff_key_cooldown matches 1.. if predicate fossil_frights:player/inventory/key_cooldown run function fossil_frights:key/update_key_cooldown_sprite
execute unless score @s ff_key_cooldown matches 1.. if predicate fossil_frights:player/inventory/key_cooldown run function fossil_frights:key/restore_key
