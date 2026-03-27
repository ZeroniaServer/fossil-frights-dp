scoreboard players add @s ff_credits_time 1
execute as @e[type=minecraft:item_display,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
execute as @e[type=minecraft:text_display,tag=ff_credits_scroll] at @s run tp @s ~ ~0.032 ~
kill @e[type=minecraft:item_display,tag=ff_credits_scroll,x=-256,y=78.6,z=-256,dx=512,dy=64,dz=512]
kill @e[type=minecraft:text_display,tag=ff_credits_scroll,x=-256,y=78.6,z=-256,dx=512,dy=64,dz=512]
execute unless entity @e[type=minecraft:item_display,tag=ff_credits_scroll] unless entity @e[type=minecraft:text_display,tag=ff_credits_scroll] run function fossil_frights:animations/credits/cleanup

execute if score @s ff_credits_time matches 1001.. run function fossil_frights:animations/credits/cleanup
