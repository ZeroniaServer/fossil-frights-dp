tag @s add ff_rejoin_frights_source
tag @e[type=minecraft:marker,tag=ff_run_member] remove ff_rejoin_frights_roster_match
execute as @e[type=minecraft:marker,tag=ff_run_member] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_frights_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_frights_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_frights_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_frights_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_frights_roster_match
execute if entity @e[type=minecraft:marker,tag=ff_run_member,tag=ff_rejoin_frights_roster_match] run function fossil_frights:game/rejoin/state/register
tag @e[type=minecraft:marker,tag=ff_run_member] remove ff_rejoin_frights_roster_match
tag @s remove ff_rejoin_frights_source
