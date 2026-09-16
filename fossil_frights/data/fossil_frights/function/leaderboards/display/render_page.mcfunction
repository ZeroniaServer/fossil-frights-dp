function fossil_frights:leaderboards/display/reset_selected
scoreboard players operation #lb_page_label ff_lb_calc = #lb_page ff_lb_calc
scoreboard players add #lb_page_label ff_lb_calc 1
execute if score #lb_page ff_lb_calc matches 0 run data modify storage fossil_frights:leaderboards slot_1.color set value "#F2C14E"
execute if score #lb_page ff_lb_calc matches 0 run data modify storage fossil_frights:leaderboards slot_2.color set value "#D6D9DF"
execute if score #lb_page ff_lb_calc matches 0 run data modify storage fossil_frights:leaderboards slot_3.color set value "#B87333"
execute if score #lb_page ff_lb_calc matches 1.. run data modify storage fossil_frights:leaderboards slot_1.color set value "white"
execute if score #lb_page ff_lb_calc matches 1.. run data modify storage fossil_frights:leaderboards slot_2.color set value "white"
execute if score #lb_page ff_lb_calc matches 1.. run data modify storage fossil_frights:leaderboards slot_3.color set value "white"
function fossil_frights:leaderboards/display/update_navigation
scoreboard players set #lb_slot_1_rank ff_lb_calc 1
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_1_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_1_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_1_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_1_rank ff_lb_calc 10
scoreboard players set #lb_slot_2_rank ff_lb_calc 2
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_2_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_2_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_2_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_2_rank ff_lb_calc 10
scoreboard players set #lb_slot_3_rank ff_lb_calc 3
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_3_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_3_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_3_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_3_rank ff_lb_calc 10
scoreboard players set #lb_slot_4_rank ff_lb_calc 4
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_4_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_4_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_4_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_4_rank ff_lb_calc 10
scoreboard players set #lb_slot_5_rank ff_lb_calc 5
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_5_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_5_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_5_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_5_rank ff_lb_calc 10
scoreboard players set #lb_slot_6_rank ff_lb_calc 6
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_6_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_6_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_6_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_6_rank ff_lb_calc 10
scoreboard players set #lb_slot_7_rank ff_lb_calc 7
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_7_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_7_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_7_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_7_rank ff_lb_calc 10
scoreboard players set #lb_slot_8_rank ff_lb_calc 8
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_8_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_8_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_8_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_8_rank ff_lb_calc 10
scoreboard players set #lb_slot_9_rank ff_lb_calc 9
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_9_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_9_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_9_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_9_rank ff_lb_calc 10
scoreboard players set #lb_slot_10_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 1.. run scoreboard players add #lb_slot_10_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 2.. run scoreboard players add #lb_slot_10_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 3.. run scoreboard players add #lb_slot_10_rank ff_lb_calc 10
execute if score #lb_page ff_lb_calc matches 4.. run scoreboard players add #lb_slot_10_rank ff_lb_calc 10
scoreboard players set #lb_slot_1_index ff_lb_calc -1
scoreboard players set #lb_slot_1_kind ff_lb_calc 0
scoreboard players set #lb_slot_1_time ff_lb_calc 0
scoreboard players set #lb_slot_1_day ff_lb_calc 0
scoreboard players set #lb_slot_2_index ff_lb_calc -1
scoreboard players set #lb_slot_2_kind ff_lb_calc 0
scoreboard players set #lb_slot_2_time ff_lb_calc 0
scoreboard players set #lb_slot_2_day ff_lb_calc 0
scoreboard players set #lb_slot_3_index ff_lb_calc -1
scoreboard players set #lb_slot_3_kind ff_lb_calc 0
scoreboard players set #lb_slot_3_time ff_lb_calc 0
scoreboard players set #lb_slot_3_day ff_lb_calc 0
scoreboard players set #lb_slot_4_index ff_lb_calc -1
scoreboard players set #lb_slot_4_kind ff_lb_calc 0
scoreboard players set #lb_slot_4_time ff_lb_calc 0
scoreboard players set #lb_slot_4_day ff_lb_calc 0
scoreboard players set #lb_slot_5_index ff_lb_calc -1
scoreboard players set #lb_slot_5_kind ff_lb_calc 0
scoreboard players set #lb_slot_5_time ff_lb_calc 0
scoreboard players set #lb_slot_5_day ff_lb_calc 0
scoreboard players set #lb_slot_6_index ff_lb_calc -1
scoreboard players set #lb_slot_6_kind ff_lb_calc 0
scoreboard players set #lb_slot_6_time ff_lb_calc 0
scoreboard players set #lb_slot_6_day ff_lb_calc 0
scoreboard players set #lb_slot_7_index ff_lb_calc -1
scoreboard players set #lb_slot_7_kind ff_lb_calc 0
scoreboard players set #lb_slot_7_time ff_lb_calc 0
scoreboard players set #lb_slot_7_day ff_lb_calc 0
scoreboard players set #lb_slot_8_index ff_lb_calc -1
scoreboard players set #lb_slot_8_kind ff_lb_calc 0
scoreboard players set #lb_slot_8_time ff_lb_calc 0
scoreboard players set #lb_slot_8_day ff_lb_calc 0
scoreboard players set #lb_slot_9_index ff_lb_calc -1
scoreboard players set #lb_slot_9_kind ff_lb_calc 0
scoreboard players set #lb_slot_9_time ff_lb_calc 0
scoreboard players set #lb_slot_9_day ff_lb_calc 0
scoreboard players set #lb_slot_10_index ff_lb_calc -1
scoreboard players set #lb_slot_10_kind ff_lb_calc 0
scoreboard players set #lb_slot_10_time ff_lb_calc 0
scoreboard players set #lb_slot_10_day ff_lb_calc 0
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 2.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 3.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
execute if score #lb_page ff_lb_calc matches 4.. run function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards discard
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_1
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_2
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_3
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_4
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_5
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_6
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_7
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_8
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_9
function fossil_frights:leaderboards/display/rank_slot with storage fossil_frights:leaderboards slot_10
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_1
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_2
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_3
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_4
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_5
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_6
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_7
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_8
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_9
function fossil_frights:leaderboards/display/format_time_slot with storage fossil_frights:leaderboards slot_10
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_1
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_2
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_3
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_4
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_5
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_6
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_7
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_8
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_9
function fossil_frights:leaderboards/display/format_day_slot with storage fossil_frights:leaderboards slot_10
function fossil_frights:leaderboards/display/build_text
