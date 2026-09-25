advancement revoke @s only fossil_frights:items/hoverboard/consume
tag @s add ff_hoverboard_restore_pending
execute store result score @s ff_hoverboard_restore_slot run data get entity @s SelectedItemSlot
tag @s remove ff_hoverboard_keep_active
tag @s remove ff_hoverboard_was_active
tag @s remove ff_hoverboard_mainhand_use
tag @s remove ff_hoverboard_offhand_use
execute if items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] run tag @s add ff_hoverboard_mainhand_use
execute if entity @s[tag=ff_hoverboard_active] run tag @s add ff_hoverboard_was_active
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] if items entity @s weapon.offhand *[custom_data~{itemID:"hoverboard"}] run tag @s add ff_hoverboard_offhand_use
execute if entity @s[tag=ff_hoverboard_offhand_use] run return 0
execute if predicate fossil_frights:player/input/sneak if entity @s[tag=ff_hoverboard_active] run function fossil_frights:items/hoverboard/disable
execute if predicate fossil_frights:player/input/sneak run return 0
execute if entity @s[tag=ff_hoverboard_was_active] if items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run function fossil_frights:items/hoverboard/disable
execute if entity @s[tag=ff_hoverboard_was_active] unless items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run tag @s add ff_hoverboard_keep_active
execute if entity @s[tag=ff_hoverboard_was_active] unless entity @s[tag=ff_hoverboard_keep_active] run function fossil_frights:items/hoverboard/disable
execute unless entity @s[tag=ff_hoverboard_was_active] unless entity @s[gamemode=spectator] run function fossil_frights:items/hoverboard/enable
execute unless entity @s[tag=ff_hoverboard_was_active] if entity @s[tag=ff_hoverboard_active] run tag @s add ff_hoverboard_keep_active
