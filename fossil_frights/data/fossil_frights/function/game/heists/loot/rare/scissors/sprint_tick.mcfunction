execute unless predicate fossil_frights:player/is_sprinting run return 0
execute unless predicate fossil_frights:player/inventory/misplaced_scissors run return 0

attribute @s minecraft:movement_speed modifier remove minecraft:sprinting
attribute @s minecraft:air_drag_modifier base set 2.0

scoreboard players set @s ff_actionbar_manager.slot.scissors_run_warning 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.scissors_run_warning fixed {translate:"ff.heists.scissors.unsafe_to_run",color:"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
