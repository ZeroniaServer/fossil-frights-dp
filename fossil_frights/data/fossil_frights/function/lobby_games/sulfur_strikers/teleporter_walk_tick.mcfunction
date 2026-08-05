execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 10 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 10 run tp @s 45 77 -62 240 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,x=18,y=80,z=-5,dx=0,dy=1,dz=0] run title @s times 5 3 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,x=18,y=80,z=-5,dx=0,dy=1,dz=0] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[gamemode=adventure,tag=!ff_fade_tp_active,x=18,y=80,z=-5,dx=0,dy=1,dz=0] ff_tp_action 10
scoreboard players set @a[scores={ff_tp_action=10},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=10},tag=!ff_fade_tp_active] add ff_fade_tp_active
