tag @s add ff_rejoin_cleanup_player
tag @e[type=minecraft:marker,tag=ff_rejoin_marker] remove ff_rejoin_cleanup_current
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_cleanup_player,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_cleanup_player,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_cleanup_player,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_cleanup_player,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_cleanup_current
execute as @e[type=minecraft:marker,tag=ff_rejoin_cleanup_current] run function fossil_frights:game/rejoin/cleanup/marker
tag @s remove ff_rejoin_cleanup_player
