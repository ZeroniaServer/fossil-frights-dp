execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 8 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tp @s 89.5 79.00 82.5 -90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tag @s add ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run function fossil_frights:lobby_games/temple_run/reset_player
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tag @s remove ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tag @s add ff_plushie_restore_queued
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,x=24,y=80,z=1,dx=0,dy=1,dz=0] run title @s times 5 3 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,x=24,y=80,z=1,dx=0,dy=1,dz=0] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[gamemode=adventure,tag=!ff_fade_tp_active,x=24,y=80,z=1,dx=0,dy=1,dz=0] ff_tp_action 8
scoreboard players set @a[scores={ff_tp_action=8},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=8},tag=!ff_fade_tp_active] add ff_fade_tp_active
