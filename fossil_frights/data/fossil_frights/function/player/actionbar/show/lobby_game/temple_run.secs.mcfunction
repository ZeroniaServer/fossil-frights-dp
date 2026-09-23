scoreboard players set @s ff_actionbar_manager.slot.lobby_game 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.lobby_game fixed [{"translate":"ff.lobby.temple_run.actionbar","color":"yellow","with":[{"translate":"%s.%s%s","color":"white","with":[{"score":{"name":"@s","objective":"ff_temple_run_sec"}},{"score":{"name":"@s","objective":"ff_temple_run_centi_tens"}},{"score":{"name":"@s","objective":"ff_temple_run_centi_ones"}}]}]}]
schedule function fossil_frights:player/actionbar/manager 1t append
