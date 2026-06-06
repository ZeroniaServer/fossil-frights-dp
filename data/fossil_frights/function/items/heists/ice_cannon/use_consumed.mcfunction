advancement revoke @s only fossil_frights:ice_cannon_remote_consumed
tag @s add ff_ice_cannon_remote_restore_pending
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_heist_guard,gamemode=!spectator] run return 0
execute if score @s ff_ice_cannon_cd matches 1.. run return 0
execute positioned 0.5 80.0 12.5 if entity @s[distance=..8] run return run title @s actionbar {text:"Too close to capture point",color:"red"}
scoreboard players set @s ff_ice_cannon_cd 60
execute at @s run function fossil_frights:items/heists/ice_cannon/fire
