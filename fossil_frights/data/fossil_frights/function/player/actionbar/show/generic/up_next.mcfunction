scoreboard players set @s ff_actionbar_manager.slot.generic 65
scoreboard players display numberformat @s ff_actionbar_manager.slot.generic fixed [{translate:"ff.messages.info",color:"yellow",with:[{translate:"ff.messages.info.up_next",with:[{score:{name:"@s",objective:"ff_queue_prompt_display"},color:"gold"}]}]}]
schedule function fossil_frights:player/actionbar/manager 1t append
