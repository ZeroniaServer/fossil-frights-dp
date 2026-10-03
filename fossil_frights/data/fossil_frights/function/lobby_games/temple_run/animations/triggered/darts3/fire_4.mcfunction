summon minecraft:arrow 164.3 80.5 54.7 {Motion:[0.0d,0.0d,-0.5d],Rotation:[180.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts3_arrow"]}
execute positioned 164.3 80.5 54.7 run playsound minecraft:entity.arrow.shoot master @a[distance=..16] ~ ~ ~ 0.9 1.0
particle minecraft:smoke 164.3 80.5 54.7 0.25 0.25 0.25 0.02 8 force
