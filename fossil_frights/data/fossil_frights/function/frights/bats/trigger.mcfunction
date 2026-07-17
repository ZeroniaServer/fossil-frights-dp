scoreboard players set $bats_fright ff_game_state 1
effect give @a[distance=..5,gamemode=!spectator] minecraft:blindness 1 0 true
particle minecraft:squid_ink ^ ^1.1 ^0.3 0.6 0.8 0.6 0.01 36 force
particle minecraft:dust{color:[0.02,0.02,0.02],scale:1.8} ^ ^1.0 ^0.3 0.55 0.75 0.55 0.01 28 force
particle minecraft:dust{color:[0.08,0.08,0.08],scale:1.2} ^ ^1.0 ^0.3 0.4 0.6 0.4 0.01 18 force
playsound minecraft:entity.bat.takeoff master @a ^ ^ ^0.3 2 0.6
playsound minecraft:entity.phantom.ambient master @a ^ ^ ^0.3 1.5 0.8
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright","ff_bats_fright_big"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright","ff_bats_fright_big"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright","ff_bats_fright_big"],PersistenceRequired:true}
summon minecraft:bat ^ ^1.1 ^0.3 {Tags:["ff_bats_fright","ff_bats_fright_big"],PersistenceRequired:true}
execute as @e[type=minecraft:bat,tag=ff_bats_fright_big,sort=nearest,limit=4] run attribute @s minecraft:scale base set 1.5
