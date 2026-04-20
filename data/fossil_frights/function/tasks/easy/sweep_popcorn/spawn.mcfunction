function fossil_frights:tasks/easy/sweep_popcorn/cleanup
setblock 10 69 69 minecraft:wildflowers[flower_amount=1]
summon minecraft:interaction 10 69 69 {width:2.2f,height:1.0f,response:1b,Tags:["ff_sweep_popcorn","ff_sweep_popcorn_click"]}
