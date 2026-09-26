execute if predicate fossil_frights:player/input/sneak unless entity @s[tag=ff_hoverboard_activation_grace] run return run function fossil_frights:items/hoverboard/disable
tag @s remove ff_hoverboard_activation_grace
execute unless predicate fossil_frights:entity/is_riding_hoverboard run return run function fossil_frights:items/hoverboard/disable
execute unless items entity @s weapon.offhand *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] unless items entity @s hotbar.* *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run return run function fossil_frights:items/hoverboard/disable
execute if predicate fossil_frights:player/input/sprint unless entity @s[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/enable
execute unless predicate fossil_frights:player/input/sprint if entity @s[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/disable
function fossil_frights:items/hoverboard/speed_tick
execute rotated as @s on vehicle on passengers if entity @s[type=minecraft:item_display,tag=ff_hoverboard_display_model] run rotate @s ~ 0
