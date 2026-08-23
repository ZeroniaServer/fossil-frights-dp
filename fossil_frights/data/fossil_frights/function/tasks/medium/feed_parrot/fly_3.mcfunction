tp @e[type=minecraft:parrot,tag=ff_feed_parrot,limit=1] 24.6 99.1 87.0 10 0
execute positioned 24.6 99.1 87.0 run playsound minecraft:entity.parrot.ambient block @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.75 0.95
schedule function fossil_frights:tasks/medium/feed_parrot/fly_4 4t
