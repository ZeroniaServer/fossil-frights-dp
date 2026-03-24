execute as @a[tag=ff_active,sort=nearest,limit=1] at @s run function fossil_frights:tasks/easy/security_camera/forced_spectate_start
execute unless entity @a[tag=ff_active,limit=1] as @p run function fossil_frights:tasks/easy/security_camera/forced_spectate_start
