execute if entity @s[tag=ff_hoverboard_restore_pending] if predicate fossil_frights:player/inventory/hoverboard run return run tag @s remove ff_hoverboard_restore_pending
execute if entity @s[tag=ff_hoverboard_restore_pending] if items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] if items entity @s weapon.offhand *[custom_data~{itemID:"hoverboard"}] run item replace entity @s weapon.mainhand with air
execute if entity @s[tag=ff_hoverboard_restore_pending] if items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] run loot replace entity @s weapon.mainhand loot fossil_frights:items/anvil/hoverboard
execute if entity @s[tag=ff_hoverboard_restore_pending] if items entity @s weapon.offhand *[custom_data~{itemID:"hoverboard"}] run loot replace entity @s weapon.offhand loot fossil_frights:items/anvil/hoverboard
execute if entity @s[tag=ff_hoverboard_restore_pending] unless items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] unless items entity @s weapon.offhand *[custom_data~{itemID:"hoverboard"}] run loot replace entity @s weapon.mainhand loot fossil_frights:items/anvil/hoverboard
tag @s remove ff_hoverboard_restore_pending
