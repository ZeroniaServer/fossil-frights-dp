tag @s add ff_dropped_item_checked

## Do nothing for items spawned from the `/give` command
execute if data entity @s {Age:5999s} run return 0

## Cancel throw (and do something)
execute if items entity @s contents *[custom_data~{itemID:"infinileaf"}] on origin run tag @s[tag=ff_ant_fight] add ff_dropped_infinileaf
execute if items entity @s contents *[custom_data~{itemID:"infinileaf"}] run return run kill @s

execute if items entity @s contents *[custom_data~{itemID:"temple_run_restart"}] on origin run tag @s add ff_dropped_temple_run_restart
execute if items entity @s contents *[custom_data~{itemID:"temple_run_restart"}] run return run kill @s

execute if items entity @s contents *[custom_data~{itemID:"parkour_restart"}] on origin run tag @s add ff_dropped_parkour_restart
execute if items entity @s contents *[custom_data~{itemID:"parkour_restart"}] run return run kill @s

execute if items entity @s contents *[custom_data~{ff_heist_trap:true}] if function fossil_frights:items/dropped_items/check_thrower run execute on origin run function fossil_frights:items/heists/trap/left_click
execute if items entity @s contents *[custom_data~{ff_heist_trap:true}] if function fossil_frights:items/dropped_items/check_thrower run return run function fossil_frights:items/dropped_items/return_item
execute if items entity @s contents *[custom_data~{ff_prevent_drop:true}] if function fossil_frights:items/dropped_items/check_thrower run return run function fossil_frights:items/dropped_items/return_item

## Allow throw
# Cancel item despawn
execute unless predicate fossil_frights:game_state/heist_mode_active run data modify entity @s Age set value -32768
execute if predicate fossil_frights:game_state/heist_mode_active unless items entity @s contents *[custom_data~{ff_heist_loot:true}] run data modify entity @s Age set value -32768

# Despawn heist loot after 20 seconds
execute if predicate fossil_frights:game_state/heist_mode_active if items entity @s contents *[custom_data~{ff_heist_loot:true}] run function fossil_frights:items/dropped_items/init_heist_loot

# Prevent pickup from non-playing players
execute if dimension minecraft:overworld run data modify entity @s Owner set value [I;0,0,0,0]

# Remove effects
item modify entity @s contents fossil_frights:game/heists/set_invisible/off
item modify entity @s contents fossil_frights:game/heists/remove_paint
execute if items entity @s contents *[custom_data~{itemID:"hoverboard"}] run item modify entity @s contents fossil_frights:items/hoverboard/set_inactive
