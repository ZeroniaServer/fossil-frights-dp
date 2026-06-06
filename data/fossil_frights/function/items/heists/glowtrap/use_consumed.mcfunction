advancement revoke @s only fossil_frights:glowtrap_placer_consumed
tag @s add ff_glowtrap_placer_restore_pending
tag @s remove ff_glowtrap_placed
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
execute unless entity @s[tag=ff_heist_guard,gamemode=!spectator] run return 0
execute if score @s ff_glowtrap_cd matches 1.. run return 0
execute anchored eyes positioned ^ ^ ^1.5 run function fossil_frights:items/heists/glowtrap/place_here
scoreboard players set @s ff_glowtrap_cd 900
tag @s remove ff_glowtrap_placed
