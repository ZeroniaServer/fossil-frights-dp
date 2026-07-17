function fossil_frights:animations/anvil/item_particles
particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~0.16 ~ 0.24 0.03 0.24 0.10 18 force
playsound minecraft:block.anvil.destroy block @a[distance=..24] ~ ~ ~ 1 1
kill @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1,sort=nearest]
