tp @e[type=minecraft:parrot,tag=ff_feed_parrot,limit=1] 25.0 98.3 89.0 10 0
execute positioned 25.0 98.3 89.0 run playsound minecraft:entity.parrot.ambient block @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.75 1.3
data merge entity @e[type=minecraft:parrot,tag=ff_feed_parrot,limit=1] {NoAI:false,NoGravity:false}
