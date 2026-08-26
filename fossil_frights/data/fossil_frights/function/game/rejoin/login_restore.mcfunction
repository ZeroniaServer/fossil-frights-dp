tag @s add ff_rejoin_login_source
tag @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted] remove ff_rejoin_login_match
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_login_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_login_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_login_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_login_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_login_match
execute unless entity @e[type=minecraft:marker,tag=ff_rejoin_login_match] run tag @s remove ff_rejoin_login_source
execute unless entity @e[type=minecraft:marker,tag=ff_rejoin_login_match] run return 0
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_guard] if entity @s[tag=ff_camera_remote_active] run tag @s add ff_rejoin_camera_return
execute if entity @s[tag=ff_rejoin_camera_return] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_frights] run team join ff_guard @s
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_guard] run team join ff_guard @s
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_guard] run function fossil_frights:items/heists/trap/common/reconcile_owner_state
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=!ff_rejoin_heists_thief] unless entity @s[tag=ff_rejoin_camera_return] as @e[type=minecraft:marker,tag=ff_rejoin_login_match] run function fossil_frights:game/rejoin/ghost/position_marker
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=!ff_rejoin_heists_thief] unless entity @s[tag=ff_rejoin_camera_return] as @e[type=minecraft:marker,tag=ff_rejoin_login_match,limit=1] at @s run tp @a[tag=ff_rejoin_login_source,limit=1] ~ ~ ~
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_thief] run tag @s add ff_rejoin_thief_restore
execute if entity @e[type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_thief] run function fossil_frights:game/heists/death_thief
tag @s remove ff_rejoin_thief_restore
effect give @s minecraft:resistance 1 10 true
function fossil_frights:messages/rejoin/reincarnated
tag @e[type=minecraft:marker,tag=ff_rejoin_login_match] add ff_rejoin_reincarnate
execute as @e[type=minecraft:marker,tag=ff_rejoin_login_match] run function fossil_frights:game/rejoin/cleanup/marker
tag @s add ff_rejoin_restored
tag @s remove ff_rejoin_camera_return
tag @s remove ff_rejoin_login_source
