# page 6 is a seperate multiplayer world-record leaderboard
execute as @e[type=minecraft:text_display,tag=ff_lb_board_index] run data modify entity @s text_opacity set value 0b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_best] run data modify entity @s text_opacity set value 0b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_player] run data modify entity @s text_opacity set value 0b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_time] run data modify entity @s text_opacity set value -1b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_players] run data modify entity @s text_opacity set value -1b
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_label] run data modify entity @s text_opacity set value -1b
execute unless entity @e[type=minecraft:interaction,tag=ff_lb_party_names_click,limit=1] run summon minecraft:interaction -5.50 81.70 6.58 {width:2.0f,height:1.6f,response:true,Tags:["ff_lb_party_names_click"]}
function fossil_frights:leaderboards/party_record/render
