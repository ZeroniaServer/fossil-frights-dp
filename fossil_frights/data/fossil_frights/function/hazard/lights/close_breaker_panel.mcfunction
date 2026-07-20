# Swing the pre-placed breaker door closed over one second.
execute as @e[tag=ff_breaker_door] run data merge entity @s {teleport_duration:20}
execute as @e[tag=ff_breaker_door] at @s run tp @s ~ ~ ~ 0 0
execute positioned -26.0 71.5 21.5 run playsound fossil-frights:hazards.breaker_close master @a[distance=..10] ~ ~ ~ 1 1

# Snap to the complete Axiom-authored hazard-reset lever pose; the lever itself does not animate.
execute as @e[tag=ff_breaker_lever] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.9396926f,-0.34202018f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000001f,1.0000001f,0.99999994f],translation:[0.16520327f,0.36706835f,0.0f]}}

kill @e[type=minecraft:interaction,tag=ff_lights_breaker_click]
