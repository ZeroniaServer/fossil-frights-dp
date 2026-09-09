data remove storage fossil_frights:leaderboards candidate
data modify storage fossil_frights:leaderboards candidate.uuid set value [I;0,0,0,0]
function fossil_frights:player/util/write_username {to:"storage fossil_frights:leaderboards candidate.name"}
function fossil_frights:run_breakdown/leaderboard/load_previous with storage fossil_frights:leaderboards candidate
execute store result storage fossil_frights:leaderboards candidate.uuid[0] int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:leaderboards candidate.uuid[1] int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:leaderboards candidate.uuid[2] int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:leaderboards candidate.uuid[3] int 1 run scoreboard players get @s ff_active_uuid_3
scoreboard players set $lb_candidate_time ff_lb_calc 0
scoreboard players set $lb_candidate_day ff_lb_calc 0
scoreboard players set $lb_candidate_runs ff_lb_calc 0
execute if score @s ff_top_time matches -2147483648..2147483647 run scoreboard players operation $lb_candidate_time ff_lb_calc = @s ff_top_time
execute if score @s ff_top_day matches -2147483648..2147483647 run scoreboard players operation $lb_candidate_day ff_lb_calc = @s ff_top_day
execute if score @s ff_run_count matches -2147483648..2147483647 run scoreboard players operation $lb_candidate_runs ff_lb_calc = @s ff_run_count
execute store result storage fossil_frights:leaderboards candidate.top_time int 1 run scoreboard players get $lb_candidate_time ff_lb_calc
execute store result storage fossil_frights:leaderboards candidate.top_day int 1 run scoreboard players get $lb_candidate_day ff_lb_calc
execute store result storage fossil_frights:leaderboards candidate.run_count int 1 run scoreboard players get $lb_candidate_runs ff_lb_calc
function fossil_frights:leaderboards/cache/remove_candidate_name with storage fossil_frights:leaderboards candidate
execute if score $lb_candidate_time ff_lb_calc matches 1.. run function fossil_frights:leaderboards/cache/insert_candidate
execute if score $lb_candidate_time ff_lb_calc matches ..0 if score $lb_candidate_day ff_lb_calc matches 1.. run function fossil_frights:leaderboards/cache/insert_candidate
