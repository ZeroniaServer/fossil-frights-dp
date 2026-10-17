data modify storage fossil_frights:party_record display_players_1 set value []
data modify storage fossil_frights:party_record display_players_2 set value []
data modify storage fossil_frights:party_record display_players_3 set value []
data modify storage fossil_frights:party_record display_names set value []
scoreboard players set #party_record_head_column ff_lb_calc 0
scoreboard players set #party_record_head_row ff_lb_calc 1
execute as @e[type=minecraft:marker,tag=ff_lb_party_record_member] run function fossil_frights:leaderboards/party_record/append_head
execute if score $party_record_time ff_lb_calc matches 1.. run function fossil_frights:leaderboards/party_record/format_time
execute if score $party_record_time ff_lb_calc matches 1.. as @e[type=minecraft:text_display,tag=ff_lb_board_party_time] run data modify entity @s text set value [{translate:"%1$s%2$s:%3$s%4$s.%5$s%6$s",color:"yellow",with:[{score:{name:"$party_record_min_tens",objective:"ff_lb_calc"}},{score:{name:"$party_record_min_ones",objective:"ff_lb_calc"}},{score:{name:"$party_record_sec_tens",objective:"ff_lb_calc"}},{score:{name:"$party_record_sec_ones",objective:"ff_lb_calc"}},{score:{name:"$party_record_centi_tens",objective:"ff_lb_calc"}},{score:{name:"$party_record_centi_ones",objective:"ff_lb_calc"}}]}]
execute unless score $party_record_time ff_lb_calc matches 1.. as @e[type=minecraft:text_display,tag=ff_lb_board_party_time] run data modify entity @s text set value [{text:"--:--:--",color:"gray",italic:false}]
execute if entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_1] run data modify entity @s transformation.scale set value [1.3f,1.3f,1.3f]
execute if entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_1] run data modify entity @s text set from storage fossil_frights:party_record display_players_1
execute if entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_2] run data modify entity @s transformation.scale set value [1.3f,1.3f,1.3f]
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_2] run data modify entity @s text set from storage fossil_frights:party_record display_players_2
execute if entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_3] run data modify entity @s transformation.scale set value [1.3f,1.3f,1.3f]
execute as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_3] run data modify entity @s text set from storage fossil_frights:party_record display_players_3
execute unless entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_1] run data modify entity @s transformation.scale set value [0.7f,0.7f,0.7f]
execute unless entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_1] run data modify entity @s text set value [{translate:"ff.lobby.ant_fight.no_scores_yet",font:"fossil_frights:small_caps",color:"#F6E7B0",italic:false}]
execute unless entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_2] run data modify entity @s text set value []
execute unless entity @e[type=minecraft:marker,tag=ff_lb_party_record_member,limit=1] as @e[type=minecraft:text_display,tag=ff_lb_board_party_players_3] run data modify entity @s text set value []
