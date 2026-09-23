scoreboard players set @s ff_actionbar_manager.slot.generic 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed {translate:"ff.settings.hover.select",color:"yellow"}
schedule function fossil_frights:player/actionbar/manager 1t append
