function fossil_frights:animations/credits/cleanup

# Screen plane from user-provided build coords:
# top corner 7 77 69
# bottom corner 7 70 81
# Credits spawn on the east side of that wall so players facing west see them.
summon minecraft:armor_stand 8.25 67.2 75.5 {Tags:["ff_credits_anchor","ff_credits","credits"],Invisible:true,Invulnerable:true,Marker:true,NoGravity:true,Rotation:[90,0]}
scoreboard players set @e[type=minecraft:armor_stand,tag=ff_credits_anchor,sort=nearest,limit=1,distance=..0.1] ff_credits_time 0

summon minecraft:item_display 26 78.6 75.0 {Tags:["ff_credits","ff_credits_reel","credits"],brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"minecraft:structure_void","minecraft:item_name":{text:"Credit Reel",italic:false},"minecraft:lore":[{text:"",extra:["credit_reel"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,0.5]}}
scoreboard players set @e[type=minecraft:item_display,tag=ff_credits_reel,sort=nearest,limit=1,x=26,y=78.5,z=74.5,distance=..0.1] ff_credits_time 0

function fossil_frights:animations/credits/summon_lines
