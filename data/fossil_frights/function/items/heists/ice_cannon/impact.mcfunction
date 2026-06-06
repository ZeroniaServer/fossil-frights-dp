effect give @a[tag=ff_heist_thief,gamemode=!spectator,distance=..2.5] minecraft:slowness 3 9 true
particle minecraft:snowflake ~ ~ ~ 0.45 0.45 0.45 0.03 55 force
particle minecraft:dust{color:[0.62f,0.9f,1.0f],scale:1.0f} ~ ~ ~ 0.42 0.32 0.42 0.01 28 force
particle minecraft:dust{color:[0.85f,0.96f,1.0f],scale:0.75f} ~ ~ ~ 0.35 0.25 0.35 0.01 20 force
particle minecraft:poof ~ ~ ~ 0.28 0.22 0.28 0.04 16 force
playsound minecraft:block.glass.break player @a[distance=..24] ~ ~ ~ 0.9 0.55
kill @e[type=minecraft:block_display,tag=ff_ice_cannon_block,sort=nearest,limit=1,distance=..1.5]
kill @s
