scoreboard players operation @s ff_rejoin_minutes = @s ff_rejoin_ticks
scoreboard players operation @s ff_rejoin_minutes /= #ticks_per_minute ff_constant
scoreboard players operation @s ff_rejoin_sec_tens = @s ff_rejoin_ticks
scoreboard players operation @s ff_rejoin_sec_tens /= #ticks_per_second ff_constant
scoreboard players operation @s ff_rejoin_sec_tens %= #60 ff_constant
scoreboard players operation @s ff_rejoin_sec_ones = @s ff_rejoin_sec_tens
scoreboard players operation @s ff_rejoin_sec_tens /= #10 ff_constant
scoreboard players operation @s ff_rejoin_sec_ones %= #10 ff_constant
tag @s add ff_rejoin_countdown_source
tag @e[type=minecraft:mannequin,tag=ff_rejoin_ghost] remove ff_rejoin_countdown_match
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_ghost] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_countdown_match
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_countdown_match] ff_rejoin_ticks = @s ff_rejoin_ticks
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_countdown_match] ff_rejoin_minutes = @s ff_rejoin_minutes
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_countdown_match] ff_rejoin_sec_tens = @s ff_rejoin_sec_tens
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_countdown_match] ff_rejoin_sec_ones = @s ff_rejoin_sec_ones
scoreboard players operation $rejoin_display_tick ff_rejoin_ticks = @s ff_rejoin_ticks
scoreboard players operation $rejoin_display_tick ff_rejoin_ticks %= #ticks_per_second ff_constant
execute if score $rejoin_display_tick ff_rejoin_ticks matches 0 run function fossil_frights:game/rejoin/ghost/countdown_display
tag @e[type=minecraft:mannequin,tag=ff_rejoin_countdown_match] remove ff_rejoin_countdown_match
tag @s remove ff_rejoin_countdown_source
