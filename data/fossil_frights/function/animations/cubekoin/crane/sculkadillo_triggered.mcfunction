loot replace entity @e[type=minecraft:item_display,tag=ff_sculkadillo,limit=1] contents loot fossil_frights:display/sculkadillo_triggered
execute as @e[type=minecraft:item_display,tag=ff_sculkadillo,limit=1] at @s run playsound minecraft:block.piston.extend block @a[distance=..16] ~ ~ ~ 0.6 1.2
