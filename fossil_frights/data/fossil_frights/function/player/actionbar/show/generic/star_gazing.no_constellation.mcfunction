scoreboard players set @s ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed {"translate":"ff.task.star_gazing.no_constellation","color":"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
