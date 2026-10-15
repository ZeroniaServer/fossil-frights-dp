# page 6 is a seperate multiplayer world-record leaderboard
execute as @e[type=minecraft:text_display,tag=ff_lb_board_index] run data modify entity @s text_opacity set value 0b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_best] run data modify entity @s text_opacity set value 0b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_player] run data modify entity @s text_opacity set value 0b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_time] run data modify entity @s text_opacity set value -1b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_players] run data modify entity @s text_opacity set value -1b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_label] run data modify entity @s text_opacity set value -1b
function fossil_frights:leaderboards/party_record/render
