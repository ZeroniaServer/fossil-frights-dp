scoreboard players set @s ff_actionbar_manager.slot.fallback_instruction 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.fallback_instruction fixed [{color:"task_book_reminder",text:"ℹ "},{translate:"ff.actionbar.locator_bar"}]
schedule function fossil_frights:player/actionbar/manager 1t append
