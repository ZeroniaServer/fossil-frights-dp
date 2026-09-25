advancement revoke @s only fossil_frights:items/hoverboard/consume
tag @s add ff_hoverboard_restore_pending
execute if entity @s[tag=ff_hoverboard_active] run return run function fossil_frights:items/hoverboard/disable
execute unless entity @s[gamemode=spectator] run function fossil_frights:items/hoverboard/enable
