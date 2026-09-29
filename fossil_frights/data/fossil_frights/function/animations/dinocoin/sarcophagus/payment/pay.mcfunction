kill @e[type=minecraft:item,distance=..1.5,predicate=fossil_frights:entity/contents/dinocoin,predicate=fossil_frights:entity/contents/count/1,sort=nearest,limit=1]
execute as @p[predicate=fossil_frights:player/is_playing,distance=..3,sort=nearest,limit=1] run function fossil_frights:player/coins/add_used_this_run
function fossil_frights:animations/dinocoin/sarcophagus/activate
