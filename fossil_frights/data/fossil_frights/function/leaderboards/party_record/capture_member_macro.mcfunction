tag @e[type=minecraft:marker,tag=ff_lb_party_record_member_new] remove ff_lb_party_record_member_new
summon minecraft:marker 0 -64 0 {Tags:["ff_lb_party_record_member","ff_lb_party_record_member_new"]}
$data modify entity @e[type=minecraft:marker,tag=ff_lb_party_record_member_new,limit=1] CustomName set value "$(name)"
tag @e[type=minecraft:marker,tag=ff_lb_party_record_member_new] remove ff_lb_party_record_member_new
