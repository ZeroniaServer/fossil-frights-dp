kill @e[type=minecraft:item,tag=ff_crane_payment_candidate,limit=1]
kill @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",count:1}},tag=!ff_crane_payment_candidate,sort=nearest,limit=1]
function fossil_frights:animations/crane/trigger
tellraw @p[tag=ff_active,distance=..3,sort=nearest,limit=1] ["<",{"color":"gray","text":"Rat"},"> Thanks for the ",{"color":"gold","text":"2 CubeKoins "},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},",  Now hurry, you have ",{"color":"red","text":"10 seconds"}," to ride the pulley"]
