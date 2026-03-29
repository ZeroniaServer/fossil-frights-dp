tag @e[type=minecraft:item_frame,sort=nearest,limit=1] add itemframe_glow_pending
execute as @e[type=minecraft:item_frame,tag=itemframe_glow_pending] run data merge entity @s {Invulnerable:1b,Fixed:1b,Invisible:1b,Glowing:1b}
schedule function itemframe:clear_glow 10t replace
