scoreboard players add @s ff_credits_time 1
execute as @e[type=minecraft:item_display,tag=ff_credits_reel] run scoreboard players add @s ff_credits_time 1
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=32..}] run scoreboard players set @s ff_credits_time 0
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=0}] run data merge entity @s {transformation:{right_rotation:[0,0,0,1]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=2}] run data merge entity @s {transformation:{right_rotation:[0,0,0.19509,0.980785]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=4}] run data merge entity @s {transformation:{right_rotation:[0,0,0.382683,0.92388]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=6}] run data merge entity @s {transformation:{right_rotation:[0,0,0.55557,0.83147]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=8}] run data merge entity @s {transformation:{right_rotation:[0,0,0.707107,0.707107]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=10}] run data merge entity @s {transformation:{right_rotation:[0,0,0.83147,0.55557]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=12}] run data merge entity @s {transformation:{right_rotation:[0,0,0.92388,0.382683]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=14}] run data merge entity @s {transformation:{right_rotation:[0,0,0.980785,0.19509]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=16}] run data merge entity @s {transformation:{right_rotation:[0,0,1,0]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=18}] run data merge entity @s {transformation:{right_rotation:[0,0,0.980785,-0.19509]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=20}] run data merge entity @s {transformation:{right_rotation:[0,0,0.92388,-0.382683]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=22}] run data merge entity @s {transformation:{right_rotation:[0,0,0.83147,-0.55557]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=24}] run data merge entity @s {transformation:{right_rotation:[0,0,0.707107,-0.707107]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=26}] run data merge entity @s {transformation:{right_rotation:[0,0,0.55557,-0.83147]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=28}] run data merge entity @s {transformation:{right_rotation:[0,0,0.382683,-0.92388]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=30}] run data merge entity @s {transformation:{right_rotation:[0,0,0.19509,-0.980785]},start_interpolation:0,interpolation_duration:2}
execute as @e[type=minecraft:item_display,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
execute as @e[type=minecraft:text_display,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
kill @e[type=minecraft:item_display,tag=ff_credits_scroll,x=-256,y=78.6,z=-256,dx=512,dy=64,dz=512]
kill @e[type=minecraft:text_display,tag=ff_credits_scroll,x=-256,y=78.6,z=-256,dx=512,dy=64,dz=512]
execute unless entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_scroll] unless entity @e[limit=1,type=minecraft:text_display,tag=ff_credits_scroll] run function fossil_frights:animations/credits/cleanup

execute if score @s ff_credits_time matches 1001.. run function fossil_frights:animations/credits/cleanup
