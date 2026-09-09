execute positioned 52 68 60 run kill @e[type=minecraft:item,distance=..1.5,predicate=fossil_frights:entity/contents/dinocoin,predicate=fossil_frights:entity/contents/count/2,sort=nearest,limit=1]
function fossil_frights:animations/dinocoin/crane/trigger
execute positioned 52 68 60 run advancement grant @p[predicate=fossil_frights:player/is_playing,distance=..3,sort=nearest,limit=1] only fossil_frights:02_achievements/going_up
execute positioned 52 68 60 run function fossil_frights:messages/dinocoin/crane/thanks_1
