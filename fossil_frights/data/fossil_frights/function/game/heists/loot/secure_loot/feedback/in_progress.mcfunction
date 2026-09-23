scoreboard players set @s ff_actionbar_manager.slot.loot_securing 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.loot_securing fixed {translate:"ff.actionbar.heists.loot_security.in_progress",color:"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
