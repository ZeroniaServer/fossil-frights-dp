advancement revoke @s only fossil_frights:camera_remote_consumed
tag @s add ff_camera_remote_restore_pending
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_heist_guard,gamemode=!spectator] run return 0
execute if score @s ff_camera_remote_cd matches 1.. run return 0
execute if entity @s[tag=ff_forced_spectate] run return 0
scoreboard players operation @s ff_camera_remote_cd = #heist_camera_remote_cooldown ff_heist
function fossil_frights:items/heists/camera_remote/start
