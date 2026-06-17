execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[tag=ff_heist_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:glowing 8 0 true
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[tag=ff_heist_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:slowness 2 1 true
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[tag=ff_heist_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:blindness 4 0 true
particle minecraft:sculk_soul ~ ~0.3 ~ 0.72 0.38 0.72 0 62 force
particle minecraft:soul_fire_flame ~ ~0.12 ~ 0.28 0.14 0.28 0 12 force
execute as @a[tag=ff_heist_guard] at @s run playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 0.7 1.25
execute as @a[tag=ff_heist_guard] at @s run playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 0.35 1.5
playsound minecraft:entity.evoker.prepare_summon player @a[tag=ff_heist_thief,distance=..12] ~ ~ ~ 0.65 1.2
kill @s
