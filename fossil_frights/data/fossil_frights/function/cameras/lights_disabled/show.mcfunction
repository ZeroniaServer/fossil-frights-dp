execute unless score lights ff_hazard_active matches 1 run return 0
execute if entity @s[tag=ff_camera_glitch_posteffect] run return 0
posteffect add @s fossil-frights:glitch
tag @s add ff_camera_glitch_posteffect
execute if entity @s[tag=ff_forced_spectate] run function fossil_frights:cameras/reapply_posteffect
execute if entity @s[tag=ff_camera_posteffect] run function fossil_frights:cameras/reapply_posteffect
