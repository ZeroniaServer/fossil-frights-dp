execute unless entity @e[type=minecraft:text_display,tag=ff_lb_board,limit=1] run return run function fossil_frights:leaderboards/display/rebuild
execute unless entity @e[type=minecraft:text_display,tag=ff_lb_board_pagination,limit=1] run return run function fossil_frights:leaderboards/display/rebuild
execute unless entity @e[type=minecraft:interaction,tag=ff_lb_nav_v8_next,limit=1] run return run function fossil_frights:leaderboards/display/rebuild
execute unless entity @e[type=minecraft:interaction,tag=ff_lb_nav_v8_prev,limit=1] run return run function fossil_frights:leaderboards/display/rebuild
function fossil_frights:leaderboards/display/update
