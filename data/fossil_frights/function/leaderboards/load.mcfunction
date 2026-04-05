# Leaderboard scores persist automatically; this only resets helper state.
scoreboard players set $lb_pending_day ff_day 0
scoreboard players set $lb_pending ff_active_uuid_0 0
scoreboard players set $lb_pending ff_active_uuid_1 0
scoreboard players set $lb_pending ff_active_uuid_2 0
scoreboard players set $lb_pending ff_active_uuid_3 0
scoreboard players set #lb_best_value ff_lb_calc 0
scoreboard players set #lb_twenty ff_lb_calc 20
scoreboard players set #lb_twelve_hundred ff_lb_calc 1200
scoreboard players set #lb_sixty ff_lb_calc 60
scoreboard players set #lb_ten ff_lb_calc 10
scoreboard players set #lb_five ff_lb_calc 5
data modify storage fossil_frights:leaderboards slot_1 set value {slot:"1",label:"1."}
data modify storage fossil_frights:leaderboards slot_2 set value {slot:"2",label:"2."}
data modify storage fossil_frights:leaderboards slot_3 set value {slot:"3",label:"3."}
data modify storage fossil_frights:leaderboards slot_4 set value {slot:"4",label:"4."}
data modify storage fossil_frights:leaderboards slot_5 set value {slot:"5",label:"5."}
data modify storage fossil_frights:leaderboards slot_6 set value {slot:"6",label:"6."}
data modify storage fossil_frights:leaderboards slot_7 set value {slot:"7",label:"7."}
data modify storage fossil_frights:leaderboards slot_8 set value {slot:"8",label:"8."}
data modify storage fossil_frights:leaderboards slot_9 set value {slot:"9",label:"9."}
data modify storage fossil_frights:leaderboards slot_10 set value {slot:"10",label:"10."}
