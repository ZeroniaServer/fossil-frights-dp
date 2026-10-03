summon minecraft:arrow 104.5 75.5 96.7 {Motion:[0.0d,0.0d,-3.0d],Rotation:[180.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts1_arrow"]}
execute positioned 104.5 75.5 97 run playsound minecraft:entity.arrow.shoot master @a[distance=..16] ~ ~ ~ 0.8 1.0
particle minecraft:smoke 104.5 75.5 96.7 0.18 0.18 0.18 0.02 8 force
