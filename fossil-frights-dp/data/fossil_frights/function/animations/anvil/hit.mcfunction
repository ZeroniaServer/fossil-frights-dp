scoreboard players add @s ff_anvil_hits 1
tp @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1,sort=nearest] ~ ~0.82 ~ 0 0
data merge entity @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1,sort=nearest] {transformation:{right_rotation:[0f,0f,-0.5f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.40f,0f]}}
data remove storage fossil_frights:anvil source
data modify storage fossil_frights:anvil source.stack set from entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1,sort=nearest] item
function fossil_frights:animations/anvil/item_particles
execute if score @s ff_anvil_result matches 1 run playsound minecraft:block.anvil.land block @a[distance=..24] ~ ~ ~ 1 1
particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~0.16 ~ 0.22 0.03 0.22 0.08 14 force
