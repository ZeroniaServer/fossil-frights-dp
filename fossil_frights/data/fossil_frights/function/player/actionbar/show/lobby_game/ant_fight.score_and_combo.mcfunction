scoreboard players set @s ff_actionbar_manager.slot.lobby_game 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.lobby_game fixed ["",{translate:"ff.lobby.ant_fight.ant_score",color:"#71de75",font:"fossil-frights:small_caps",with:[{translate: "%s %s",with:[{score:{name:"@s",objective:"ff_ant_score"},color:"white"},{text:"",color:"green",extra:["(+",{score:{name:"@s",objective:"ff_ant_combo"}},")"]}]}]}]
schedule function fossil_frights:player/actionbar/manager 1t append
