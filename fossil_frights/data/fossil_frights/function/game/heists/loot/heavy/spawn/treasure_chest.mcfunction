kill @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click]
kill @e[type=minecraft:shulker,tag=fh_treasure_chest_collidebox]
summon minecraft:interaction -2 81 66 {width:2.5,height:2.2,response:true,Tags:["ff_heist_loot_interaction","ff_heist_loot_click","ff_heist_loot_treasure_chest_click"]}
summon minecraft:shulker -2 81 66 {Tags:["fh_treasure_chest_collidebox"],Invulnerable:true,NoAI:true,Color:6,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}],attributes:[{id:"minecraft:scale",base:2}]}
