execute if entity @s[tag=ff_rejoin_camera] run function fossil_frights:game/rejoin/ghost/spawn_camera
execute if entity @s[tag=ff_rejoin_camera] run return 0
execute if entity @s[tag=ff_rejoin_heists_thief] run tp @s -1 109 55.5 180 0
execute if entity @s[tag=ff_rejoin_heists_thief] positioned -1 109 55.5 rotated 180 0 run function fossil_frights:game/rejoin/ghost/spawn_body
execute if entity @s[tag=ff_rejoin_heists_thief] run return 0
function fossil_frights:game/rejoin/ghost/position_marker
execute at @s run function fossil_frights:game/rejoin/ghost/spawn_body
