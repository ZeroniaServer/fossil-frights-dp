$execute as @e[type=minecraft:item_display,tag=itemframe_head_display_new,sort=nearest,limit=1,distance=..5] at @s run tp @s ~ ~ ~ $(yaw) $(pitch)
