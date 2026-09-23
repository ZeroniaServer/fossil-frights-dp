scoreboard players set @s ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed {translate:"ff.dinocoins.required",color:"red","with":[{translate:"ff.dinocoins.number",with:[2]}]}
schedule function fossil_frights:player/actionbar/manager 1t append
