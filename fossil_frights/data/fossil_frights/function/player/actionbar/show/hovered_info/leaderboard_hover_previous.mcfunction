scoreboard players set @s ff_actionbar_manager.slot.generic 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed {translate:"ff.leaderboard.hover.previous",with:[{keybind:"key.use"}],color:"white"}
schedule function fossil_frights:player/actionbar/manager 1t append
