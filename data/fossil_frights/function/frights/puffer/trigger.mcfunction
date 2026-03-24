scoreboard players set $puffer_fright ff_game_state 1
scoreboard players set $puffer_timer ff_game_state 0
data merge entity @e[type=minecraft:pufferfish,tag=ff_pufferfish_fright,sort=nearest,limit=1] {PuffState:2}
particle minecraft:bubble 2 83 66 0.55 0.55 0.55 0.02 35 force
particle minecraft:splash 2 83 66 0.55 0.55 0.55 0.15 20 force
particle minecraft:dust{color:[0.9,0.95,0.6],scale:1.4} 2 83 66 0.35 0.35 0.35 0.01 18 force
playsound minecraft:entity.puffer_fish.blow_up master @a 2 83 66 2 0.7
playsound minecraft:entity.guardian.attack master @a 2 83 66 1.6 0.6
schedule function fossil_frights:frights/puffer/scale_1 2t
