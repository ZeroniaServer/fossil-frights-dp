# fastest duos OR party time shows
execute if score $run_admin_modified ff_game_state matches 1 run return 0
execute if score $party_record_time ff_lb_calc matches 1.. if score $party_record_time ff_lb_calc <= $timer_ticks ff_day run return 0
scoreboard players operation $party_record_time ff_lb_calc = $timer_ticks ff_day
kill @e[type=minecraft:marker,tag=ff_lb_party_record_member]
execute as @e[type=minecraft:marker,tag=ff_run_member] run function fossil_frights:leaderboards/party_record/capture_member
function fossil_frights:leaderboards/display/update
