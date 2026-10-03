summon minecraft:arrow 159.3 80.5 53.3 {Motion:[0.0d,0.0d,1.0d],Rotation:[0.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts3_arrow"]}
execute positioned 159.3 80.5 53.3 run playsound minecraft:entity.arrow.shoot master @a[distance=..16] ~ ~ ~ 0.9 1.0
particle minecraft:smoke 159.3 80.5 53.3 0.25 0.25 0.25 0.02 8 force
