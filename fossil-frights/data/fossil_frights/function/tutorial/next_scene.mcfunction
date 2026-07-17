function fossil_frights:tutorial/camera/select_owned
execute as @e[type=minecraft:text_display,tag=ff_tutorial_camera_current,limit=1] run data merge entity @s {teleport_duration:0,interpolation_duration:0}
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 300 1.25 1
scoreboard players add @s ff_tutorial_scene 1
scoreboard players set @s ff_tutorial_tick 0
