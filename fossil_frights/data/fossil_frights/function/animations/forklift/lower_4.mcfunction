function fossil_frights:animations/forklift/place_4
execute positioned -1 72 27 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.25 1.15
execute positioned -2.0 70.0 27.0 as @a[dx=0,dy=0,dz=1,gamemode=!spectator,gamemode=!creative] run function fossil_frights:animations/forklift/crush_player
execute positioned 0.0 70.0 27.0 as @a[dx=0,dy=0,dz=1,gamemode=!spectator,gamemode=!creative] run function fossil_frights:animations/forklift/crush_player
