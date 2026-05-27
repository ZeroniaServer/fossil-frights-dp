execute if score $sarcophagus_prompt_cooldown ff_game_state matches 1.. run scoreboard players remove $sarcophagus_prompt_cooldown ff_game_state 1
execute if score $sarcophagus_timer ff_game_state matches 0 if score $sarcophagus_prompt_cooldown ff_game_state matches 0 positioned 80 75 81 if entity @a[tag=ff_active,distance=..3,sort=nearest,limit=1] run function fossil_frights:animations/cubekoin/sarcophagus/prompt
execute if score $sarcophagus_timer ff_game_state matches 0 positioned 80 75 81 if entity @e[type=minecraft:item,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot",count:1}},limit=1] run function fossil_frights:animations/cubekoin/sarcophagus/payment/pay
execute if score $sarcophagus_timer ff_game_state matches 1.. run particle minecraft:portal 79.5 74 79.0 0.5 0.1 0 0.8 12 force
execute if score $sarcophagus_timer ff_game_state matches 1.. if entity @a[tag=ff_active,tag=!ff_fade_tp_active,x=79,y=74,z=79,dx=0,dy=0,dz=0,limit=1] run function fossil_frights:animations/cubekoin/sarcophagus/start_ride
execute if score $sarcophagus_timer ff_game_state matches 1.. run scoreboard players remove $sarcophagus_timer ff_game_state 1
execute if score $sarcophagus_timer ff_game_state matches 0 if block 79 75 79 air run function fossil_frights:animations/cubekoin/sarcophagus/reset
