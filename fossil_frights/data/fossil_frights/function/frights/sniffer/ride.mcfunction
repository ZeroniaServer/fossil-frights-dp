advancement revoke @s only fossil_frights:misc/sniffer_click
execute if predicate fossil_frights:entity/has_vehicle run return fail
execute as @n[type=minecraft:sniffer,tag=ff_sniffer_fright] if predicate fossil_frights:entity/has_passenger_player run return fail

ride @s mount @n[type=minecraft:sniffer,tag=ff_sniffer_fright]
playsound minecraft:entity.sniffer.happy neutral @s ~ ~ ~ 1 0.85
