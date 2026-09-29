scoreboard players set @s ff_actionbar_manager.slot.fallback_instruction 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.fallback_instruction fixed [{color:"green",text:"ℹ "},{translate:"ff.actionbar.task_book_reminder"}]
schedule function fossil_frights:player/actionbar/manager 1t append
