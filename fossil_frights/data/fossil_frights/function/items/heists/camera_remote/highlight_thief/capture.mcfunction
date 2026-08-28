execute as @a[team=ff_guard] at @s run playsound fossil-frights:heists.highlight_thief master @s ~ ~ ~ 1 1
execute as @a[team=ff_thief] at @s run playsound fossil-frights:heists.highlight_thief master @s ~ ~ ~ 1 1
execute as @a[team=ff_spectator] at @s run playsound fossil-frights:heists.highlight_thief master @s ~ ~ ~ 1 1
advancement grant @s only fossil_frights:02_achievements/heists_under_surveillance
execute if score lights ff_hazard_active matches 1 run return 0
scoreboard players set @s ff_security_camera_heist 50

effect give @p[team=ff_thief] glowing 3 0 true
execute if entity @s[tag=ff_heist_scissors_actionbar_priority] run return 0
execute if score @s ff_security_camera matches 1 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.ruins", color:white}]}
execute if score @s ff_security_camera matches 2 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.skeleton", color:white}]}
execute if score @s ff_security_camera matches 3 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.cafe", color:white}]}
execute if score @s ff_security_camera matches 4 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.entry", color:white}]}
execute if score @s ff_security_camera matches 5 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.gift_shop", color:white}]}
execute if score @s ff_security_camera matches 6 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.security", color:white}]}
execute if score @s ff_security_camera matches 7 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.basement", color:white}]}
execute if score @s ff_security_camera matches 8 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.left_hall", color:white}]}
execute if score @s ff_security_camera matches 9 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.aviary", color:white}]}
execute if score @s ff_security_camera matches 10 run title @a[team=ff_guard] actionbar {translate:"", fallback:"%s spotted %s in %s", color:gray, with:[{selector:"@s"},{selector:"@p[team=ff_thief]"},{translate:"ff.security_camera.eggshibit", color:white}]}
