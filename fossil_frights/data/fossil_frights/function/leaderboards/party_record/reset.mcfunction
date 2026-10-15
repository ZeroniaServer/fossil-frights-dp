# reset page 6 party wr.
scoreboard players set $party_record_time ff_lb_calc 0
kill @e[type=minecraft:marker,tag=ff_lb_party_record_member]
function fossil_frights:leaderboards/display/update
