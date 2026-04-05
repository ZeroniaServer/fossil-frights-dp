data modify storage fossil_frights:leaderboards display_text set value [{"text":"\n","color":"white"},{"text":"     ʙᴇꜱᴛ       ᴘʟᴀʏᴇʀ","color":"#F6E7B0"},{"text":"\n","color":"white"}]
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
execute as @e[type=minecraft:text_display,tag=ff_lb_board] run data modify entity @s text set from storage fossil_frights:leaderboards display_text
