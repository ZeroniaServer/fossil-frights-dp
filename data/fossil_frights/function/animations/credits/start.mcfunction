function fossil_frights:animations/credits/cleanup

# Screen plane from user-provided build coords:
# top corner 7 77 69
# bottom corner 7 70 81
# Credits spawn on the east side of that wall so players facing west see them.
summon minecraft:armor_stand 8.25 67.2 75.5 {Tags:["ff_credits_anchor","ff_credits","credits"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Rotation:[90f,0f]}
scoreboard players set @e[type=minecraft:armor_stand,tag=ff_credits_anchor,sort=nearest,limit=1,distance=..0.1] ff_credits_time 0

function fossil_frights:animations/credits/summon_lines
