execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 5 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 5 run tp @s -31.5 78.00 98.5 275 -10
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,x=-25,y=80,z=1,dx=0,dy=1,dz=0] run title @s times 5 3 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,x=-25,y=80,z=1,dx=0,dy=1,dz=0] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[gamemode=adventure,tag=!ff_fade_tp_active,x=-25,y=80,z=1,dx=0,dy=1,dz=0] ff_tp_action 5
scoreboard players set @a[scores={ff_tp_action=5},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=5},tag=!ff_fade_tp_active] add ff_fade_tp_active
