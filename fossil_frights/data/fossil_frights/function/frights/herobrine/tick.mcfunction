# Face nearest active player
execute as @e[type=minecraft:mannequin,tag=ff_herobrine,tag=!ff_herobrine_seen] at @s positioned as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator,limit=1,sort=nearest] positioned ~ ~0.2 ~ run rotate @s facing ~ ~ ~

# Remove seen Herobrine
execute as @e[type=minecraft:mannequin,tag=ff_herobrine,tag=ff_herobrine_seen,scores={ff_herobrine_delay=1..}] run scoreboard players remove @s ff_herobrine_delay 1
execute as @e[type=minecraft:mannequin,tag=ff_herobrine,tag=ff_herobrine_seen,scores={ff_herobrine_delay=..0}] run function fossil_frights:frights/herobrine/despawn

# Check nearby player vision
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] if predicate fossil_frights:player/frights/herobrine_looking_at run function fossil_frights:frights/herobrine/seen
