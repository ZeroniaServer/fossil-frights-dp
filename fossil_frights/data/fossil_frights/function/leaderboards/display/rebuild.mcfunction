scoreboard players set $leaderboard_display_ready ff_lb_calc 0
function fossil_frights:leaderboards/display/cleanup
function fossil_frights:leaderboards/display/setup
function fossil_frights:leaderboards/display/update
execute if entity @e[type=minecraft:text_display,tag=ff_lb_board,limit=1] run scoreboard players set $leaderboard_display_ready ff_lb_calc 1
