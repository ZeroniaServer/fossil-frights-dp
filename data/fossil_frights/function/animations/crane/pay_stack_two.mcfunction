kill @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",count:2}},sort=nearest,limit=1]
function fossil_frights:animations/crane/trigger
advancement grant @p[tag=ff_active,distance=..3,sort=nearest,limit=1] only fossil_frights:02_achievements/going_up
tellraw @p[tag=ff_active,distance=..3,sort=nearest,limit=1] ["<",{"color":"gray","text":"Rat"},"> Thanks for the ",{"color":"gold","text":"2 CubeKoins "},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},",  Now hurry, you have ",{"color":"red","text":"10 seconds"}," to ride the pulley"]
