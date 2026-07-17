# Resolve the current room even when the player is carrying only the remote.
function fossil_frights:map/resolve_region

execute if score @s ff_map_region matches 3 run return run scoreboard players set @s ff_security_camera 3
execute if score @s ff_map_region matches 5 run return run scoreboard players set @s ff_security_camera 2
execute if score @s ff_map_region matches 8 run return run scoreboard players set @s ff_security_camera 1
execute if score @s ff_map_region matches 15 run return run scoreboard players set @s ff_security_camera 8
execute if score @s ff_map_region matches 12 run return run scoreboard players set @s ff_security_camera 9
execute if score @s ff_map_region matches 17 run return run scoreboard players set @s ff_security_camera 10
execute if score @s ff_map_region matches 23 run return run scoreboard players set @s ff_security_camera 7
execute if score @s ff_map_region matches 23 run return run scoreboard players set @s ff_security_camera 6
execute if score @s ff_map_region matches 2 run return run scoreboard players set @s ff_security_camera 5
execute if score @s ff_map_region matches 1 run return run scoreboard players set @s ff_security_camera 4

execute store result score @s ff_security_camera run scoreboard players get @n[tag=security_camera] ff_security_camera
