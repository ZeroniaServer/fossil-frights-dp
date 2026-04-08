execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] as @a[tag=ff_active,sort=nearest,limit=1] run function fossil_frights:messages/error/security_system_cannot_be_used_right_now
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] if entity @a[tag=ff_active,limit=1] run return 0
execute as @a[tag=ff_active,sort=nearest,limit=1] at @s run function fossil_frights:tasks/easy/security_camera/forced_spectate_start
execute unless entity @a[tag=ff_active,limit=1] as @p run function fossil_frights:tasks/easy/security_camera/forced_spectate_start
