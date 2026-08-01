function fossil_frights:hazard/curse/remove_toggle
setblock -20 72 28 minecraft:light[level=14]
summon minecraft:end_crystal -20.00 71.82 28.00 {Tags:["ff_curse_toggle"],ShowBottom:false}
particle minecraft:dust{color:[0.65,0.1,1.0],scale:1.6} -20.00 72.00 28.00 0.6 2.4 0.6 1 500 force
