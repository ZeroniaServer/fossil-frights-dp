kill @e[type=minecraft:item,tag=ff_crane_payment_candidate,limit=1]
execute positioned 52 68 60 run kill @e[type=minecraft:item,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot",count:1}},tag=!ff_crane_payment_candidate,sort=nearest,limit=1]
function fossil_frights:animations/crane/trigger
execute positioned 52 68 60 run advancement grant @p[tag=ff_active,distance=..3,sort=nearest,limit=1] only fossil_frights:02_achievements/going_up
execute positioned 52 68 60 run tellraw @p[tag=ff_active,distance=..3,sort=nearest,limit=1] ["<",{"color":"dark_aqua","text":"Sculk Creature"},"> Thanks for the ",{"color":"gold","text":"2 CubeKoins "},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},",  Now hurry, you have ",{"color":"red","text":"10 seconds"}," to ride the pulley"]
