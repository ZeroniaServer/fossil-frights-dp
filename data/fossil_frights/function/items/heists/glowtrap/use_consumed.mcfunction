advancement revoke @s only fossil_frights:glowtrap_placer_consumed
tag @s add ff_glowtrap_placer_restore_pending
tag @s remove ff_glowtrap_placed
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
scoreboard players set @s ff_glowtrap_scan 11
execute anchored eyes positioned ^ ^ ^0.2 run function fossil_frights:items/heists/glowtrap/raycast_step
tag @s remove ff_glowtrap_placed
