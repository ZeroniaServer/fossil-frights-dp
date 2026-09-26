execute if predicate fossil_frights:player/input/sneak run return run function fossil_frights:items/hoverboard/disable
execute unless predicate fossil_frights:entity/is_riding_hoverboard run function fossil_frights:items/hoverboard/disable
execute if items entity @s weapon.offhand *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run return run function fossil_frights:items/hoverboard/disable
execute unless items entity @s hotbar.* *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run return run function fossil_frights:items/hoverboard/disable
execute if predicate fossil_frights:player/input/sprint unless entity @s[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/enable
execute unless predicate fossil_frights:player/input/sprint if entity @s[tag=ff_hoverboard_sprinting] run function fossil_frights:items/hoverboard/sprint/disable
function fossil_frights:items/hoverboard/speed_tick
execute if entity @s[tag=ff_hoverboard_sprinting] run effect give @s minecraft:speed 1 0 true
execute on vehicle rotated as @s on passengers if entity @s[type=minecraft:item_display,tag=ff_hoverboard_display_model] run rotate @s ~ 0
