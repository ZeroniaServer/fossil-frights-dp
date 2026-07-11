kill @e[type=minecraft:item,tag=ff_crane_payment_candidate,limit=1]
execute positioned 52 68 60 run kill @e[type=minecraft:item,distance=..1.5,predicate=fossil_frights:entity/contents/dinocoin,predicate=fossil_frights:entity/contents/count/1,tag=!ff_crane_payment_candidate,sort=nearest,limit=1]
function fossil_frights:animations/dinocoin/crane/trigger
execute positioned 52 68 60 run advancement grant @p[predicate=fossil_frights:player/is_playing,distance=..3,sort=nearest,limit=1] only fossil_frights:02_achievements/going_up
execute positioned 52 68 60 run tellraw @p[predicate=fossil_frights:player/is_playing,distance=..3,sort=nearest,limit=1] {"translate":"ff.sculkadillo.thanks","with":[{"translate":"ff.sculkadillo","color":"dark_aqua"},{"translate":"%s %s", "with": [{"translate":"ff.dinocoins.number","color":"gold","with":["2"]},{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/dinocoin"}]},{"translate":"ff.seconds.number","color":"red","with":["10"]}]}
