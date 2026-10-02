tag @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted] remove ff_rejoin_login_match
function fossil_frights:entity/match/active
tag @e[limit=1,type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_ghosted,predicate=fossil_frights:entity/match/active] add ff_rejoin_login_match
execute unless entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match] run return 0
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_guard] if entity @s[tag=ff_camera_remote_active] run tag @s add ff_rejoin_camera_return
execute if entity @s[tag=ff_rejoin_camera_return] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_frights] run team join ff_guard @s
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_guard] run team join ff_guard @s
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_guard] run function fossil_frights:items/heists/trap/common/reconcile_owner_state
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=!ff_rejoin_heists_thief] unless entity @s[tag=ff_rejoin_camera_return] run tp @s @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match]
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_thief] run tag @s add ff_rejoin_thief_restore
execute if entity @e[limit=1,type=minecraft:marker,tag=ff_rejoin_login_match,tag=ff_rejoin_heists_thief] run function fossil_frights:game/heists/death_thief
tag @s remove ff_rejoin_thief_restore
effect give @s minecraft:resistance 1 10 true
function fossil_frights:messages/rejoin/reincarnated
tag @e[type=minecraft:marker,tag=ff_rejoin_login_match] add ff_rejoin_reincarnate
execute as @e[type=minecraft:marker,tag=ff_rejoin_login_match] run function fossil_frights:game/rejoin/cleanup/marker
tag @s add ff_rejoin_restored
tag @s remove ff_rejoin_camera_return
