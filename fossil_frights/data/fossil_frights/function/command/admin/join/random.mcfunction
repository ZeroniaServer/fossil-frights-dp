# Admin random joins may bootstrap a fresh Heists lobby, then assign this target.
tag @s add ff_admin_random_target
execute unless predicate fossil_frights:game_state/game_running unless entity @a[limit=1,tag=ff_in_queue] run function fossil_frights:join/heists/admin_bootstrap
team join ff_lobby @s
tag @s remove ff_fade_tp_active
scoreboard players set @s ff_tp_action 0
scoreboard players set @s ff_tp_delay 0
scoreboard players set @s ff_join_cooldown 0
tag @s add ff_quick_start_heists_assigning
function fossil_frights:join/heists/random
tag @s remove ff_quick_start_heists_assigning
tag @s remove ff_admin_random_target
