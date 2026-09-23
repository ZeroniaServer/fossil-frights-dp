execute at @s run playsound fossil-frights:heists.loot_secured player @s ~ ~ ~ 0.9 1

scoreboard players set @s ff_actionbar_manager.slot.loot_securing 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.loot_securing fixed {translate:"ff.actionbar.heists.loot_security.already_secured",color:"red"}
schedule function fossil_frights:player/actionbar/manager 1t append
