data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.mace_display] {transformation:{right_rotation:[0f,0f,-0.5f,1f],scale:[1f,1f,1.15f],left_rotation:[0f,1f,0f,1f],translation:[0f,-0.40f,0f]}}
function fossil_frights:animations/anvil/item_particles
playsound minecraft:block.anvil.land block @a[distance=..24] ~ ~ ~ 1 1
particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~0.16 ~ 0.22 0.03 0.22 0.08 14 force
