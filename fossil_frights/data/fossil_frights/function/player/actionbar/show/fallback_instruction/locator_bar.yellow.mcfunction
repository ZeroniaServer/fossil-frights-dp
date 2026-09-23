scoreboard players set @s ff_actionbar_manager.slot.fallback_instruction 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.fallback_instruction fixed {translate:"ff.actionbar.locator_bar",color:"yellow"}
schedule function fossil_frights:player/actionbar/manager 1t append
