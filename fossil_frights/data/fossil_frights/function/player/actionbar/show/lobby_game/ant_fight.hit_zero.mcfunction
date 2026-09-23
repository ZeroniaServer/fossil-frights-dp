scoreboard players set @s ff_actionbar_manager.slot.lobby_game 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.lobby_game fixed ["",{translate:"ff.lobby.ant_fight.ant_score",color:"#71de75",font:"fossil-frights:small_caps",with:[["",{score:{name:"@s",objective:"ff_ant_score"},color:"white"},"   ",{translate:"ff.lobby.ant_fight.hit_by",color:"white",font:"minecraft:default",with:[{score:{name:"#ant_fight_attacker_name",objective:"ff_dummy"}}]}]]}]
schedule function fossil_frights:player/actionbar/manager 1t append
