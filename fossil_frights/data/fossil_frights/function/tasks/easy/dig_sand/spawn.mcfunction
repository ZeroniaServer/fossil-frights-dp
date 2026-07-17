function fossil_frights:tasks/easy/dig_sand/cleanup
setblock 34 77 74 minecraft:sand
setblock 35 76 74 minecraft:sand
summon minecraft:interaction 35.5 76 74.5 {width:5,height:2,response:true,Tags:["ff_dig_sand","ff_dig_sand_click"]}
