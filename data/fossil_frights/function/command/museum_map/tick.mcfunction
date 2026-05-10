execute as @e[type=minecraft:item_frame,x=2,y=80,z=17,dx=1,dy=1,dz=1] run data merge entity @s {Glowing:0b}
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless entity @e[type=minecraft:interaction,tag=ff_museum_map_click,limit=1] run return 0
execute positioned 2.5 80.5 17.5 unless entity @a[tag=ff_active,tag=!obtained_pteradactyl_plushie,tag=!obtained_plesiosaur_plushie,tag=!obtained_trike_plushie,tag=!obtained_sniffer_plushie,tag=!obtained_t_rex_plushie,tag=!obtained_velociraptor_plushie,tag=!obtained_gold_t_rex_plushie,distance=..3] run return 0
scoreboard players add $museum_map_flash ff_game_state 1
execute if score $museum_map_flash ff_game_state matches 20.. run scoreboard players set $museum_map_flash ff_game_state 0
execute if score $museum_map_flash ff_game_state matches ..9 as @e[type=minecraft:item_frame,x=2,y=80,z=17,dx=1,dy=1,dz=1] run data merge entity @s {Glowing:1b}
