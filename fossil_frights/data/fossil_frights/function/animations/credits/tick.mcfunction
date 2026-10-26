scoreboard players add #credit_reel_animation_time ff_global 1
execute if score #credit_reel_animation_time ff_global matches 32.. run scoreboard players set #credit_reel_animation_time ff_global 0
execute if score #credit_reel_animation_time ff_global matches 0 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0,1]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 2 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.19509,0.980785]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 4 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.382683,0.92388]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 6 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.55557,0.83147]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 8 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.707107,0.707107]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 10 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.83147,0.55557]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 12 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.92388,0.382683]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 14 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.980785,0.19509]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 16 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,1,0]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 18 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.980785,-0.19509]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 20 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.92388,-0.382683]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 22 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.83147,-0.55557]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 24 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.707107,-0.707107]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 26 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.55557,-0.83147]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 28 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.382683,-0.92388]},start_interpolation:0,interpolation_duration:2}
execute if score #credit_reel_animation_time ff_global matches 30 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] {transformation:{right_rotation:[0,0,0.19509,-0.980785]},start_interpolation:0,interpolation_duration:2}

execute as @e[type=#fossil_frights:display_entities,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
execute positioned 8.0 78.00 75.5 positioned ~-20 ~ ~-20 run kill @e[type=#fossil_frights:display_entities,tag=ff_credits_scroll,dx=39,dy=1,dz=39]
execute positioned 7.75 77.616 75.0 as @e[limit=1,type=minecraft:item_display,tag=ff_credits_scroll.title,dx=0,dy=0,dz=0,tag=!ff_credits_scroll.squeezing] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{translation:[0,1.04827586207,0],scale:[0.725,0.5,0.725]}}
execute positioned 7.75 77.616 75.0 as @e[limit=1,type=minecraft:item_display,tag=ff_credits_scroll.title,dx=0,dy=0,dz=0,tag=!ff_credits_scroll.squeezing] run tag @s add ff_credits_scroll.squeezing

execute if entity @e[limit=1,type=#fossil_frights:display_entities,tag=ff_credits_scroll] run return run schedule function fossil_frights:animations/credits/tick 1t
function fossil_frights:animations/credits/cleanup
