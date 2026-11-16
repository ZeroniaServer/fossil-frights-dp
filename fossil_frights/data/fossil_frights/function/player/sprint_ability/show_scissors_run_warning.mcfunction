scoreboard players set @s ff_actionbar_manager.slot.scissors_run_warning 65
execute unless predicate fossil_frights:entity/is_riding_hoverboard run scoreboard players display numberformat @s ff_actionbar_manager.slot.scissors_run_warning fixed {translate:"ff.actionbar.scissors.unsafe_to_run",color:"red"}
execute if predicate fossil_frights:entity/is_riding_hoverboard run scoreboard players display numberformat @s ff_actionbar_manager.slot.scissors_run_warning fixed {translate:"ff.actionbar.scissors.unsafe_to_zoom",color:"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
