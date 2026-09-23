scoreboard players set @s ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed {translate:"ff.actionbar.trap.no_trap_to_pickup",color:"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
