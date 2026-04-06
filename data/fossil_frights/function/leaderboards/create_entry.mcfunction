function fossil_frights:leaderboards/create_entry_macro with storage fossil_frights:leaderboards sync_entry
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_top_time = @s ff_top_time
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_top_day = @s ff_top_day
scoreboard players operation @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] ff_run_count = @s ff_run_count
tag @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_new,limit=1] remove ff_lb_new
