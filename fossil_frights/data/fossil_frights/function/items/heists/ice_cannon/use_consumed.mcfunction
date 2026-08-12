advancement revoke @s only fossil_frights:items/ice_cannon_remote/consume
tag @s add ff_ice_cannon_remote_restore_pending
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
execute at @s run function fossil_frights:items/heists/ice_cannon/fire
