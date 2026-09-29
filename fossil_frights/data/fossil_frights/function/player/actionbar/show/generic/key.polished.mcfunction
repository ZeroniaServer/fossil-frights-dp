scoreboard players set @s ff_actionbar_manager.slot.keys 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.keys fixed {translate:"ff.crab.key_polished",color:"gold"}
schedule function fossil_frights:player/actionbar/manager 1t append
