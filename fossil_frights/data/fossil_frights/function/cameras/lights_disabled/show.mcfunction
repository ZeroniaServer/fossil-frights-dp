execute unless score lights ff_hazard_active matches 1 run return 0
execute if entity @s[tag=ff_camera_lights_disabled_overlay] run return 0
loot replace entity @s armor.head loot fossil_frights:items/cameras/lights_disabled_overlay
tag @s add ff_camera_lights_disabled_overlay
