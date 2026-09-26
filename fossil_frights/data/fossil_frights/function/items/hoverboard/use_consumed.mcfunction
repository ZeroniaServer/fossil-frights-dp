advancement revoke @s only fossil_frights:items/hoverboard/consume

execute if entity @s[tag=ff_hoverboard_restore_pending] run function fossil_frights:items/hoverboard/restore_used_item
execute if predicate fossil_frights:entity/is_swimming run return 0
execute positioned ~ ~0.601 ~ unless entity @s[dx=0] run return 0

execute unless entity @s[gamemode=creative] run tag @s add ff_hoverboard_restore_pending
execute unless entity @s[gamemode=creative] if items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] run item replace entity @s enderchest.0 from entity @s weapon.mainhand
execute unless entity @s[gamemode=creative] unless items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] run item replace entity @s enderchest.0 from entity @s weapon.offhand

execute if entity @s[tag=ff_hoverboard_active] run return 0
execute if predicate fossil_frights:player/input/sneak run return 0
execute if entity @s[gamemode=spectator] run return 0

execute unless entity @s[gamemode=creative] run item modify entity @s enderchest.0 fossil_frights:items/hoverboard/set_active
execute if entity @s[gamemode=creative] if items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] run item modify entity @s weapon.mainhand fossil_frights:items/hoverboard/set_active
execute if entity @s[gamemode=creative] unless items entity @s weapon.mainhand *[custom_data~{itemID:"hoverboard"}] run item modify entity @s weapon.offhand fossil_frights:items/hoverboard/set_active

function fossil_frights:items/hoverboard/enable
