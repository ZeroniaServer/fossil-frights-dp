execute unless entity @s[tag=ff_camera_lights_disabled_overlay] run return 0
execute if predicate fossil_frights:game_state/heist_mode_active run loot replace entity @s armor.head loot fossil_frights:items/other/security_guard_hat
execute unless predicate fossil_frights:game_state/heist_mode_active run item replace entity @s armor.head with air
tag @s remove ff_camera_lights_disabled_overlay
