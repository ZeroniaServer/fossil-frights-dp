kill @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",count:2}},sort=nearest,limit=1]
function fossil_frights:animations/crane/trigger
tellraw @a ["<",{"color":"gray","text":"Rat"},"> Thanks for the ",{"color":"gold","text":"2 CubeKoins "},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/cubekoin"},",  Now hurry, you have ",{"color":"red","text":"10 seconds"}," to ride the pulley"]
