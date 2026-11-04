kill @e[type=minecraft:interaction,tag=ff_cocoa_run_click]
kill @e[type=minecraft:mannequin,tag=animation_boss]
kill @e[type=minecraft:armor_stand,tag=animation_boss_chair]
function fossil_frights:animations/defeat/apply_random_skin
summon minecraft:interaction -33 81 80 {width:1.5,height:2,response:true,Tags:["ff_cocoa_run","ff_cocoa_run_click"]}
