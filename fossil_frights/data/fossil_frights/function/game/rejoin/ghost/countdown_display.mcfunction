tag @s add ff_rejoin_countdown_source
tag @e[type=minecraft:text_display,tag=ff_rejoin_display] remove ff_rejoin_countdown_match
execute as @e[type=minecraft:text_display,tag=ff_rejoin_display] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_countdown_match
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_ghost,sort=nearest,limit=1] at @s if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_countdown_source,limit=1] ff_active_uuid_3 run tp @e[type=minecraft:text_display,tag=ff_rejoin_countdown_match,limit=1] ~ ~2.4 ~
execute store result storage fossil_frights:rejoin display.minutes int 1 run scoreboard players get @s ff_rejoin_minutes
execute store result storage fossil_frights:rejoin display.tens int 1 run scoreboard players get @s ff_rejoin_sec_tens
execute store result storage fossil_frights:rejoin display.ones int 1 run scoreboard players get @s ff_rejoin_sec_ones
function fossil_frights:game/rejoin/ghost/countdown_display_macro with storage fossil_frights:rejoin display
tag @e[type=minecraft:text_display,tag=ff_rejoin_countdown_match] remove ff_rejoin_countdown_match
tag @s remove ff_rejoin_countdown_source
