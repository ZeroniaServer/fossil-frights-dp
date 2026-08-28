execute if predicate fossil_frights:player/inventory/misplaced_scissors if predicate fossil_frights:player/is_sprinting run attribute @s minecraft:movement_speed modifier remove minecraft:sprinting
execute if predicate fossil_frights:player/inventory/misplaced_scissors if predicate fossil_frights:player/is_sprinting run attribute @s minecraft:air_drag_modifier base set 2.0
execute if predicate fossil_frights:player/inventory/misplaced_scissors if predicate fossil_frights:player/is_sprinting run title @s actionbar {text:"It's unsafe to run with scissors.",color:"red",italic:false}
