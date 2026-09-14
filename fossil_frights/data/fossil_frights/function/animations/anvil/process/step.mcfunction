execute unless entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.process] run return run function fossil_frights:animations/anvil/process/stop

execute store result score #step ff_dummy run data get storage fossil_frights:anvil step
execute store result storage fossil_frights:anvil step int 1 run scoreboard players add #step ff_dummy 1

execute if score #step ff_dummy matches 1 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]}}
execute if score #step ff_dummy matches 3 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.10f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.06f,0f]}}
execute if score #step ff_dummy matches 5 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.20f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.12f,0f]}}
execute if score #step ff_dummy matches 7 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.30f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.22f,0f]}}
execute if score #step ff_dummy matches 9 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.40f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.32f,0f]}}
execute if score #step ff_dummy matches 11 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.46f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.38f,0f]}}
execute if score #step ff_dummy matches 13 positioned 39 81 62 run function fossil_frights:animations/anvil/process/hit_fx
execute if score #step ff_dummy matches 15 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.34f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.26f,0f]}}
execute if score #step ff_dummy matches 17 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.18f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.10f,0f]}}
execute if score #step ff_dummy matches 21 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]}}
execute if score #step ff_dummy matches 23 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.10f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.06f,0f]}}
execute if score #step ff_dummy matches 25 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.20f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.12f,0f]}}
execute if score #step ff_dummy matches 27 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.30f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.22f,0f]}}
execute if score #step ff_dummy matches 29 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.40f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.32f,0f]}}
execute if score #step ff_dummy matches 31 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.46f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.38f,0f]}}
execute if score #step ff_dummy matches 33 positioned 39 81 62 run function fossil_frights:animations/anvil/process/hit_fx
execute if score #step ff_dummy matches 35 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.34f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.26f,0f]}}
execute if score #step ff_dummy matches 37 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.18f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.10f,0f]}}
execute if score #step ff_dummy matches 41 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f]}}
execute if score #step ff_dummy matches 43 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.10f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.06f,0f]}}
execute if score #step ff_dummy matches 45 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.20f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.12f,0f]}}
execute if score #step ff_dummy matches 47 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.30f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.22f,0f]}}
execute if score #step ff_dummy matches 49 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.40f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.32f,0f]}}
execute if score #step ff_dummy matches 51 run data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.46f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.38f,0f]}}
execute if score #step ff_dummy matches 53 positioned 39 81 62 run function fossil_frights:animations/anvil/process/hit_fx
execute if score #step ff_dummy matches 54..58 positioned 39 81 62 run particle minecraft:poof ~ ~0.24 ~ 0.12 0.06 0.12 0.01 4 force
execute if score #step ff_dummy matches 62.. run return run function fossil_frights:animations/anvil/process/finish

schedule function fossil_frights:animations/anvil/process/step 1t append
