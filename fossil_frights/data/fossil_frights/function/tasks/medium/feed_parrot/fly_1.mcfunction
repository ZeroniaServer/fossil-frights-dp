tp @e[type=minecraft:parrot,tag=ff_feed_parrot,limit=1] 24.2 99.2 85.0 10 0
execute positioned 24.2 99.2 85.0 run playsound minecraft:entity.parrot.fly block @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.65 1.2
schedule function fossil_frights:tasks/medium/feed_parrot/fly_2 4t
