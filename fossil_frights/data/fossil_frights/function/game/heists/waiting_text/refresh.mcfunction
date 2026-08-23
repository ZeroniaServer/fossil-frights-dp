execute unless score $heist_mode_active ff_game_state matches 1 run return run function fossil_frights:game/heists/waiting_text/hide
execute unless entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] run summon minecraft:text_display -1.0 111.0 53.05 {Tags:["ff_heist_waiting_for_guards"],text:"",billboard:"fixed",Rotation:[0,0],background:1073741824,default_background:true,shadow:true,brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.8,0.8,0.8]}}
scoreboard players operation $heist_flash ff_heist = $heist_wait_ticks ff_heist
scoreboard players operation $heist_flash ff_heist %= #20 ff_constant
execute if score $heist_round_active ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] text set value [{"text":"Game starting...","color":"green","italic":false}]
execute if score $heist_round_active ff_game_state matches 1 run kill @e[type=minecraft:text_display,tag=ff_heist_ready_button]
execute if score $heist_round_active ff_game_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_waiting_text_click]
execute if score $heist_round_active ff_game_state matches 1 run return 0
execute unless entity @a[limit=1,team=ff_thief] run data modify entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] text set value [{"text":"Waiting for thief to join","color":"yellow","italic":false}]
execute unless entity @a[limit=1,team=ff_thief] run kill @e[type=minecraft:text_display,tag=ff_heist_ready_button]
execute unless entity @a[limit=1,team=ff_thief] run kill @e[type=minecraft:interaction,tag=ff_heist_waiting_text_click]
execute unless entity @a[limit=1,team=ff_thief] run return 0
execute unless entity @a[limit=1,team=ff_guard] run data modify entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] text set value [{"text":"Waiting for guard to join","color":"gray","italic":false}]
execute unless entity @a[limit=1,team=ff_guard] run kill @e[type=minecraft:text_display,tag=ff_heist_ready_button]
execute unless entity @a[limit=1,team=ff_guard] run kill @e[type=minecraft:interaction,tag=ff_heist_waiting_text_click]
execute unless entity @a[limit=1,team=ff_guard] run return 0
execute if score $heist_thieves_ready ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] text set value [{"text":"Waiting for guards to start","color":"gray","italic":false}]
execute unless score $heist_thieves_ready ff_game_state matches 1 if score $heist_flash ff_heist matches ..9 run data modify entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] text set value [{"text":"Click to ready up","color":"yellow","italic":false}]
execute unless score $heist_thieves_ready ff_game_state matches 1 if score $heist_flash ff_heist matches 10.. run data modify entity @e[type=minecraft:text_display,tag=ff_heist_waiting_for_guards,limit=1] text set value [{"text":"Click to ready up","color":"white","italic":false}]
execute unless entity @e[type=minecraft:text_display,tag=ff_heist_ready_button,limit=1] run summon minecraft:text_display -1.0 110.7 53.05 {Tags:["ff_heist_ready_button"],text:"",billboard:"fixed",Rotation:[0,0],background:1073741824,default_background:true,shadow:true,brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.8,0.8,0.8]}}
execute if score $heist_thieves_ready ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_heist_ready_button,limit=1] text set value {"translate":"ff.button.heist_unready","font":"fossil-frights:chat_buttons","color":"white","italic":false}
execute unless score $heist_thieves_ready ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_heist_ready_button,limit=1] text set value {"translate":"ff.button.heist_ready","font":"fossil-frights:chat_buttons","color":"white","italic":false}
execute unless entity @e[type=minecraft:interaction,tag=ff_heist_waiting_text_click,limit=1] run summon minecraft:interaction -1 110.4 51.750 {height:0.6875f,response:1b,width:2.5625f,Tags:["ff_heist_waiting_text_click"]}
