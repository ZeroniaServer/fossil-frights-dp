execute at @s run playsound fossil-frights:camera.open
scoreboard players set @s ff_security_camera_heist 50

effect give @p[tag=ff_heist_thief] glowing 3 0 true
execute as @p[tag=ff_heist_thief] at @s run function fossil_frights:map/resolve_region
title @a[tag=ff_heist_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[tag=ff_heist_thief]"},{storage:'fossil_frights:map', nbt:'current.name', color:white, interpret:true}]}
