scoreboard players add @s ff_credits_time 1
execute as @e[type=minecraft:item_display,tag=ff_credits_reel] run scoreboard players add @s ff_credits_time 1
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=32..}] run scoreboard players set @s ff_credits_time 0
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=0..1}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=2..3}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.19509f,0.980785f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=4..5}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.382683f,0.92388f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=6..7}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.55557f,0.83147f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=8..9}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.707107f,0.707107f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=10..11}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.83147f,0.55557f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=12..13}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.92388f,0.382683f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=14..15}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.980785f,0.19509f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=16..17}] run data merge entity @s {transformation:{right_rotation:[0f,0f,1f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=18..19}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.980785f,-0.19509f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=20..21}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.92388f,-0.382683f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=22..23}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.83147f,-0.55557f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=24..25}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.707107f,-0.707107f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=26..27}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.55557f,-0.83147f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=28..29}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.382683f,-0.92388f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_reel,scores={ff_credits_time=30..31}] run data merge entity @s {transformation:{right_rotation:[0f,0f,0.19509f,-0.980785f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[type=minecraft:item_display,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
execute as @e[type=minecraft:text_display,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
kill @e[type=minecraft:item_display,tag=ff_credits_scroll,x=-256,y=78.6,z=-256,dx=512,dy=64,dz=512]
kill @e[type=minecraft:text_display,tag=ff_credits_scroll,x=-256,y=78.6,z=-256,dx=512,dy=64,dz=512]
execute unless entity @e[type=minecraft:item_display,tag=ff_credits_scroll] unless entity @e[type=minecraft:text_display,tag=ff_credits_scroll] run function fossil_frights:animations/credits/cleanup

execute if score @s ff_credits_time matches 1001.. run function fossil_frights:animations/credits/cleanup
