execute unless entity @s[tag=ff_camera_lights_disabled_overlay] run return 0
execute if score $heist_mode_active ff_game_state matches 1 run loot replace entity @s armor.head loot fossil_frights:items/heists/security_hat
execute unless score $heist_mode_active ff_game_state matches 1 run item replace entity @s armor.head with air
tag @s remove ff_camera_lights_disabled_overlay
