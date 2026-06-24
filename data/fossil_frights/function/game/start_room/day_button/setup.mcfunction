scoreboard players set #start_button_active ff_game_state 1
execute positioned 20.0 71.0 28.0 as @e[limit=1,dx=0,dy=0,dz=0,type=minecraft:interaction,tag=ff_button] run function fossil_frights:button/enable 

kill @e[type=minecraft:text_display,tag=ff_day_button_label]
summon minecraft:text_display 20.5 72.1 28.97 {Tags:["ff_day_button_label"],text:"",billboard:"fixed",see_through:0b,Rotation:[180f,0f],background:1073741824,default_background:1b,shadow:1b,brightness:{sky:15,block:15}}
