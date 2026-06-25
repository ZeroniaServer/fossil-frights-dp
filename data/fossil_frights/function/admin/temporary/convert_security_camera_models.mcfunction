execute as @e[type=item_display] if items entity @s contents diamond_hoe[custom_model_data={floats:[6]}] run tag @s add ff_security_camera_model
execute as @e[type=item_display,tag=ff_security_camera_model] run loot replace entity @s contents loot fossil_frights:display/security_camera
