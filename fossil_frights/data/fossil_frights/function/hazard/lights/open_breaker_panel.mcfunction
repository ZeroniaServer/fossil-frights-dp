# Swing the pre-placed breaker door open over one second.
execute as @e[tag=ff_breaker_door] run data merge entity @s {teleport_duration:20}
execute as @e[tag=ff_breaker_door] at @s run tp @s ~ ~ ~ 150 0
execute as @a[tag=ff_forced_spectate] run function fossil_frights:cameras/lights_disabled/show

# Snap to the complete Axiom-authored hazard-active lever pose.
execute as @e[tag=ff_breaker_lever] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,-0.17364818f,0.9848078f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.9999999f,0.9999999f,0.99999994f],translation:[-0.40049213f,-0.04046391f,0.0f]}}

# The hitbox exists only while Lights Out is active. The guard prevents duplicates.
execute unless entity @e[type=minecraft:interaction,tag=ff_lights_breaker_click,limit=1] run summon minecraft:interaction -26.0 71.0 21.5 {width:1.0f,height:1.0f,response:true,Tags:["ff_lights_breaker_click"]}
