data modify storage fossil_frights:leaderboards display_text_index set value [{text:"    \n",color:"white"}]
data modify storage fossil_frights:leaderboards display_text_best set value [{text:"           \n",color:"white"},{translate:"ff.lobby.leaderboard.best",font:"fossil-frights:small_caps",color:"#F6E7B0"},{text:"\n",color:"white"}]
data modify storage fossil_frights:leaderboards display_text_player set value [{text:"                        \n",color:"white"},{translate:"ff.lobby.leaderboard.player",font:"fossil-frights:small_caps",color:"#F6E7B0"},{text:"\n",color:"white"}]
data modify storage fossil_frights:leaderboards display_text_background set value [{text:"\n                                          \n",color:"white"}]
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_1
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_2
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_3
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_4
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_5
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_6
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_7
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_8
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_9
function fossil_frights:leaderboards/display/append_row with storage fossil_frights:leaderboards slot_10
execute as @e[type=minecraft:text_display,tag=ff_lb_board,tag=ff_lb_board_index] run data modify entity @s text set from storage fossil_frights:leaderboards display_text_index
execute as @e[type=minecraft:text_display,tag=ff_lb_board,tag=ff_lb_board_best] run data modify entity @s text set from storage fossil_frights:leaderboards display_text_best
execute as @e[type=minecraft:text_display,tag=ff_lb_board,tag=ff_lb_board_player] run data modify entity @s text set from storage fossil_frights:leaderboards display_text_player
execute as @e[type=minecraft:text_display,tag=ff_lb_board,tag=ff_lb_board_background] run data modify entity @s text set from storage fossil_frights:leaderboards display_text_background
