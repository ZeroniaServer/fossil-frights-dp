scoreboard players set @s ff_actionbar_manager.slot.generic 30
tag @s remove ff_actionbar.fading_out
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed {translate:"ff.unlocking"}
schedule function fossil_frights:player/actionbar/manager 1t append
