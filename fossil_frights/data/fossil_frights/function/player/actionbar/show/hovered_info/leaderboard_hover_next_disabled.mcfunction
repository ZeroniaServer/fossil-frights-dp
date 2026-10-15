scoreboard players set @s ff_actionbar_manager.slot.generic 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed [{translate:"ff.leaderboard.hover.next",with:[{keybind:"key.use"}],color:"gray"},{text:" ",color:"gray"},{translate:"ff.leaderboard.hover.disabled",color:"gray"}]
schedule function fossil_frights:player/actionbar/manager 1t append
