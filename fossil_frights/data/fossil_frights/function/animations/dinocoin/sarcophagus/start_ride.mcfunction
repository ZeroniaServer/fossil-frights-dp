execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 12 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 12 run tp @s -1.8 70 52.5 90 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[predicate=fossil_frights:player/is_playing,tag=!ff_fade_tp_active,x=79,y=74,z=79,dx=0,dy=0,dz=0] run title @s times 5 3 10
execute as @a[predicate=fossil_frights:player/is_playing,tag=!ff_fade_tp_active,x=79,y=74,z=79,dx=0,dy=0,dz=0] run title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[predicate=fossil_frights:player/is_playing,tag=!ff_fade_tp_active,x=79,y=74,z=79,dx=0,dy=0,dz=0] ff_tp_action 12
scoreboard players set @a[scores={ff_tp_action=12},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=12},tag=!ff_fade_tp_active] add ff_fade_tp_active
fill 78 75 78 78 75 79 air
function fossil_frights:animations/dinocoin/sarcophagus/reset
