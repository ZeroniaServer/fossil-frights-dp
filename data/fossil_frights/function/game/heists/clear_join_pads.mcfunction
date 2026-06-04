execute unless score $heist_mode_active ff_game_state matches 1 run return 0
kill @e[type=minecraft:item_display,tag=ff_join_heist_pad]
kill @e[type=minecraft:text_display,tag=ff_join_heist_label]
