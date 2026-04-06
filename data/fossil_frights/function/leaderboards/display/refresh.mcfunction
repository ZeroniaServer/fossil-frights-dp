execute if entity @e[type=minecraft:text_display,tag=ff_lb_board,limit=1] run function fossil_frights:leaderboards/display/update
execute unless entity @e[type=minecraft:text_display,tag=ff_lb_board,limit=1] run function fossil_frights:leaderboards/display/rebuild
