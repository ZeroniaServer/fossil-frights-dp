summon minecraft:arrow 122.3 83.5 87.5 {Motion:[1.0d,0.0d,0.0d],Rotation:[-90.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts2_arrow","ff_darts2_east"]}
summon minecraft:arrow 122.3 83.5 86.5 {Motion:[1.0d,0.0d,0.0d],Rotation:[-90.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts2_arrow","ff_darts2_east"]}
summon minecraft:arrow 122.3 83.5 85.5 {Motion:[1.0d,0.0d,0.0d],Rotation:[-90.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts2_arrow","ff_darts2_east"]}
summon minecraft:arrow 122.3 83.5 84.5 {Motion:[1.0d,0.0d,0.0d],Rotation:[-90.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts2_arrow","ff_darts2_east"]}
summon minecraft:arrow 122.3 83.5 83.5 {Motion:[1.0d,0.0d,0.0d],Rotation:[-90.0f,0.0f],pickup:0b,damage:2.0d,Tags:["ff_darts2_arrow","ff_darts2_east"]}
execute as @e[type=minecraft:arrow,tag=ff_darts2_east] run data merge entity @s {Rotation:[-90.0f,0.0f]}
execute positioned 122.3 83.5 85.5 run playsound minecraft:entity.arrow.shoot master @a[distance=..16] ~ ~ ~ 0.9 1.0
particle minecraft:smoke 122.3 83.5 85.5 0.35 0.35 1.0 0.02 16 force
