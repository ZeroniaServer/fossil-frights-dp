tag @s add ff_rejoin_cleanup_source
tag @e[type=minecraft:mannequin,tag=ff_rejoin_ghost] remove ff_rejoin_cleanup_match
tag @e[type=minecraft:text_display,tag=ff_rejoin_display] remove ff_rejoin_cleanup_match
tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head] remove ff_rejoin_cleanup_match
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_ghost] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_cleanup_match
execute as @e[type=minecraft:text_display,tag=ff_rejoin_display] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_cleanup_match
execute as @e[type=minecraft:armor_stand,tag=ff_rejoin_head] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_cleanup_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_cleanup_match
kill @e[type=minecraft:text_display,tag=ff_rejoin_cleanup_match]
execute if entity @s[tag=ff_rejoin_reincarnate] run tp @e[type=minecraft:mannequin,tag=ff_rejoin_cleanup_match] 0 -200 0
execute unless entity @s[tag=ff_rejoin_reincarnate] run kill @e[type=minecraft:mannequin,tag=ff_rejoin_cleanup_match]
kill @e[type=minecraft:armor_stand,tag=ff_rejoin_cleanup_match]
execute if entity @s[tag=ff_rejoin_paused] if score $timer_started ff_day matches 1 run function fossil_frights:game/frights/timer/start
execute if entity @s[tag=ff_rejoin_paused] unless score $timer_started ff_day matches 1 run scoreboard players set $timer_frozen ff_day 0
tag @s remove ff_rejoin_cleanup_source
kill @s
