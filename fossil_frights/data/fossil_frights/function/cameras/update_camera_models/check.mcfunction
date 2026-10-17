scoreboard players set #on ff_security_camera 0
execute at @s if entity @a[predicate=fossil_frights:player/team/guard,gamemode=spectator,distance=..5] run scoreboard players set #on ff_security_camera 1
execute if score #on ff_security_camera matches 0 run item modify entity @s contents fossil_frights:security_camera/off
execute if score #on ff_security_camera matches 1 run item modify entity @s contents fossil_frights:security_camera/on
