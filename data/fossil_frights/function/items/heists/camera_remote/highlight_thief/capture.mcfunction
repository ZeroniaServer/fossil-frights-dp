execute at @s run playsound fossil-frights:heists.highlight_thief
advancement grant @s only fossil_frights:02_achievements/heists_under_surveillance
scoreboard players set @s ff_security_camera_heist 50

effect give @p[team=ff_thief] glowing 3 0 true
execute as @p[team=ff_thief] at @s run function fossil_frights:map/resolve_region
title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{storage:'fossil_frights:map', nbt:'current.name', color:white, interpret:true}]}
