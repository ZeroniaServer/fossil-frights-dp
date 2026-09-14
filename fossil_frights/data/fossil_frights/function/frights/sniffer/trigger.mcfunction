scoreboard players set $sniffer_fright ff_game_state 1
fill 19 97 55 18 95 52 minecraft:air
particle minecraft:poof 18.5 95.5 53.5 0.7 0.5 1.1 0.03 28 force
particle minecraft:dust{color:[0.85,0.85,0.85],scale:1.2} 18.5 95.6 53.5 0.7 0.45 1.1 0.01 20 force
particle minecraft:block{block_state:{Name:"minecraft:bone_block"}} 18.5 95.5 53.5 0.7 0.5 1.1 0.08 18 force
particle minecraft:campfire_cosy_smoke 18.5 95.7 53.5 0.45 0.35 0.8 0.01 12 force
particle minecraft:soul_fire_flame 18.5 95.45 53.5 0.35 0.25 0.6 0.02 10 force
particle minecraft:dust{color:[0.55,0.75,1.0],scale:0.9} 18.5 95.3 53.5 0.4 0.2 0.7 0.01 12 force
playsound minecraft:entity.warden.emerge master @a 18.5 95.5 53.5 1.1 1.55
playsound minecraft:entity.skeleton.converted_to_stray master @a 18.5 95.5 53.5 0.95 0.75
playsound minecraft:block.bone_block.break master @a 18.5 95.5 53.5 0.8 0.8
kill @e[type=minecraft:sniffer,tag=ff_sniffer_fright]
kill @e[type=minecraft:interaction,tag=ff_sniffer_fright_click]
summon minecraft:sniffer 19.09 95.00 54.56 {Tags:["ff_sniffer_fright"],PersistenceRequired:true,Silent:true,Rotation:[180,0],Passengers:[{id:"minecraft:interaction",Tags:["ff_sniffer_fright_click"],width:2.5,height:-2,response:true}]}
attribute @e[type=minecraft:sniffer,tag=ff_sniffer_fright,sort=nearest,limit=1] minecraft:scale base set 1.25
