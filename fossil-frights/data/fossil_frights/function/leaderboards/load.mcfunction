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
scoreboard players set #lb_max_entries ff_lb_calc 50
scoreboard players set $leaderboard_display_ready ff_lb_calc 0
execute unless score $current ff_lb_generation matches -2147483648..2147483647 run scoreboard players set $current ff_lb_generation 1
execute unless data storage fossil_frights:leaderboards entries run data modify storage fossil_frights:leaderboards entries set value []
execute unless data storage fossil_frights:leaderboards revoked run data modify storage fossil_frights:leaderboards revoked set value []
data modify storage fossil_frights:leaderboards slot_1 set value {slot:"1",label:"1.",index:-1,kind:0,color:"#F2C14E"}
data modify storage fossil_frights:leaderboards slot_2 set value {slot:"2",label:"2.",index:-1,kind:0,color:"#D6D9DF"}
data modify storage fossil_frights:leaderboards slot_3 set value {slot:"3",label:"3.",index:-1,kind:0,color:"#B87333"}
data modify storage fossil_frights:leaderboards slot_4 set value {slot:"4",label:"4.",index:-1,kind:0,color:"white"}
data modify storage fossil_frights:leaderboards slot_5 set value {slot:"5",label:"5.",index:-1,kind:0,color:"white"}
data modify storage fossil_frights:leaderboards slot_6 set value {slot:"6",label:"6.",index:-1,kind:0,color:"white"}
data modify storage fossil_frights:leaderboards slot_7 set value {slot:"7",label:"7.",index:-1,kind:0,color:"white"}
data modify storage fossil_frights:leaderboards slot_8 set value {slot:"8",label:"8.",index:-1,kind:0,color:"white"}
data modify storage fossil_frights:leaderboards slot_9 set value {slot:"9",label:"9.",index:-1,kind:0,color:"white"}
data modify storage fossil_frights:leaderboards slot_10 set value {slot:"10",label:"10.",index:-1,kind:0,color:"white"}
