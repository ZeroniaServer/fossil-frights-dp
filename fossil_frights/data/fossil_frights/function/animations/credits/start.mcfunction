function fossil_frights:animations/credits/cleanup

# Screen plane from user-provided build coords:
# top corner 7 77 69
# bottom corner 7 70 81
# Credits spawn on the east side of that wall so players facing west see them.
summon minecraft:armor_stand 8.1 67.2 75.5 {Tags:["ff_credits_anchor","ff_credits","credits"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Rotation:[90,0]}
scoreboard players set @e[type=minecraft:armor_stand,tag=ff_credits_anchor,sort=nearest,limit=1,distance=..0.1] ff_credits_time 0

execute positioned 26 77.85 75.0 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/storage/credit_reel",nbt:{Tags:["ff_credits","ff_credits_reel","credits"],width:1.5,height:1.5,brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0.75,0],scale:[0.5,0.5,0.5]}}}
scoreboard players set @e[type=minecraft:item_display,tag=ff_credits_reel,sort=nearest,limit=1,x=26,y=78.5,z=74.5,distance=..0.1] ff_credits_time 0

function fossil_frights:animations/credits/summon_lines
