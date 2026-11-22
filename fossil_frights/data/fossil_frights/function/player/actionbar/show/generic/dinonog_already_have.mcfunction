scoreboard players set @s ff_actionbar_manager.slot.keys 40
tag @s remove ff_actionbar.fading_out
scoreboard players display numberformat @s ff_actionbar_manager.slot.keys fixed {translate:"ff.actionbar.dinonog_already_have",color:"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
