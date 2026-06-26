scoreboard players set #on ff_security_camera 0
scoreboard players operation #this ff_security_camera = @s ff_security_camera
execute at @s as @a[gamemode=spectator,distance=..5] if score @s ff_security_camera = #this ff_security_camera run scoreboard players set #on ff_security_camera 1
execute if score #on ff_security_camera matches 0 run item modify entity @s contents fossil_frights:security_camera/off
execute if score #on ff_security_camera matches 1 run item modify entity @s contents fossil_frights:security_camera/on
